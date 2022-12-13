//
//  TaskList.swift
//  Viper-tableview
//
//  Created by Galina Iaroshenko on 13.12.2022.
//

import Foundation

class TaskList {
    
    private init() {}
    public static let shared = TaskList()
    
    public private(set) var tasks: [Task] = [
        Task(nameOfArticle: "SQL Tutorial", customer: "proglib", price: 100, numberOfSigns: 1500),
        Task(nameOfArticle: "iOS Tutorial", customer: "habr", price: 200, numberOfSigns: 1500),
        ]
}
