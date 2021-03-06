package grails.nosql

import grails.gorm.annotation.Entity
import org.bson.types.ObjectId

@Entity
class Characters {

    static constraints = {
    }

    static mapWith = "mongo"

    ObjectId id
    String name
    String className
    String race
    int strength_stat
    float strength_mod
    int dex_stat
    float dex_mod
    int con_stat
    float con_mod
    int intl_stat
    float intl_mod
    int wsdm_stat
    float wsdm_mod
    int chr_stat
    float chr_mod
    int ac
}
