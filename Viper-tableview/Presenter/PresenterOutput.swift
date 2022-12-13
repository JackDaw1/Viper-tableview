//
//  PresenterOutput.swift
//  Viper-tableview
//
//  Created by Galina Iaroshenko on 13.12.2022.
//

import Foundation

class PresenterOutput : PresenterOutputProtocol {
    weak var view: ViewInputProtocol?
    
    func doSomeLogic() {
        //call network logic
        view?.printData(data: "Data")
    }
}

protocol PresenterOutputProtocol : AnyObject {
    func doSomeLogic()
    var view: IView? {get set}
}
