//
//  InteractorInput.swift
//  Viper-tableview
//
//  Created by Galina Iaroshenko on 13.12.2022.
//


import Foundation

protocol InteractorInputProtocol: AnyObject {
    var presenter: PresenterInputProtocol? {get set}
    
    func loadData()
}

class InteractorInput : InteractorInputProtocol {
    var presenter: PresenterInputProtocol?
    
    //weak var view: IVipVC?
    
    func loadData() {
        //success
        let response = LoadData.Response.success(data: "Some")
        presenter?.setupData(data: response)
    }
    
    
}

