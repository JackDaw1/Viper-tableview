//
//  Task.swift
//  Viper-tableview
//
//  Created by Galina Iaroshenko on 13.12.2022.
//

import Foundation

class Task {
    var nameOfArticle:String?
    var customer:String
    var price:Int
    var numberOfSigns: Int
    
    init(nameOfArticle:String?,
            customer:String,
            price:Int,
            numberOfSigns: Int) {
        self.nameOfArticle = nameOfArticle
        self.customer = customer
        self.price = price
        self.numberOfSigns = numberOfSigns
    }
}
