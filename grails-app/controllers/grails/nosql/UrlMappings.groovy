package grails.nosql

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "/$controller/$action?/$id?"(parseRequest:true){  constraints {
            action = [GET:"index", POST:"save", PUT:"update", DELETE:"remove"]
        } }
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
