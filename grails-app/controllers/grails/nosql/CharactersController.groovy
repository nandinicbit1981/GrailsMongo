package grails.nosql

import com.gmongo.GMongo
import org.bson.types.ObjectId
import grails.converters.JSON
import groovy.json.JsonBuilder

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.springframework.beans.factory.annotation.*

@Transactional(readOnly = false)
class CharactersController {

    @Value('${foo.bar.hello}')
    String recipient
    def mongo = new GMongo()
    def db = mongo.getDB("DungeonsAndDragons")

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def show(Characters charactersInstance) {
        respond charactersInstance
        // redirect action:"all", method:"GET"
    }
//
//    def index() {
//        //respond charactersInstance
//        System.out.println("nandini");
//        println Characters.list().size();
//        render(view: "index", model: [ characters: Characters.list() ])
//    }

    def index() {
        //respond charactersInstance
        System.out.println("nandini");
        println Characters.list().size();
        render(view: 'all', model: [ characters: Characters.list() ])
    }

    def createForm(){
        render(view: 'create')
    }

    def editForm(){
        Characters characters=  Characters.findById(new ObjectId(params.get('id')));
        render(view: 'edit', model: [ characters: characters ])
    }

    def html(){
        Characters characters=  Characters.findById(new ObjectId(params.get('id')));
        println "Check this";
        println characters.id;
        render(view: 'test', model: [ characters: characters])
    }

    def json(){
        render Characters.findById(new ObjectId(params.get('id'))) as JSON
    }

    def deleteCharacter() {
        Characters newCharacters = Characters.findById(new ObjectId(params.get('id')));
        delete(newCharacters);
        render(view: 'all', model: [ characters: Characters.list() ])
    }


    Character create() {
        def jsonString = request.JSON//returns null:q
        Characters characters = new Characters(jsonString);
        save(characters);
        render(view: 'all', model: [ characters: Characters.list() ])

    }

    def hello() {
        // def recipient = grailsApplication.config.getProperty('foo.bar.hello')
        redirect action:"index", method:"GET"
    }

    @Transactional
    def save(Characters charactersInstance) {
        System.out.print("in save method please please work");
        println charactersInstance;
        if (charactersInstance == null) {
            notFound()
            return
        }

        if (charactersInstance.hasErrors()) {
            respond charactersInstance.errors, view:'create'
            return
        }

        charactersInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'Some Label', default: 'Characters'), charactersInstance.id])
                redirect charactersInstance
            }
            '*' { respond charactersInstance, [status: CREATED] }
        }
    }

    def edit() {
        def jsonString = request.JSON//returns null:q
        Characters newCharacters = new Characters(jsonString);
        newCharacters.setId(new ObjectId(jsonString.get("id")));
        Characters oldCharacters=  Characters.findById(newCharacters.id);

        oldCharacters.setProperties(newCharacters.properties);
        update(oldCharacters);
        render(view: 'all', model: [ characters: Characters.list() ])
    }

    @Transactional
    def update(Characters charactersInstance) {
        if (charactersInstance == null) {
            notFound()
            return
        }

        if (charactersInstance.hasErrors()) {
            respond charactersInstance.errors, view:'/edit'
            return
        }
        println(charactersInstance.id)
        charactersInstance.save flush:true

    }

    @Transactional
    def delete(Characters charactersInstance) {

        if (charactersInstance == null) {
            notFound()
            return
        }


        charactersInstance.delete flush:true
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'characters.label', default: 'Characters'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
