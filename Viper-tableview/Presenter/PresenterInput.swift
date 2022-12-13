//
//  PresenterInput.swift
//  Viper-tableview
//
//  Created by Galina Iaroshenko on 13.12.2022.
//

import Foundation

protocol PresenterInputProtocol : AnyObject {
    var interactor: InteractorInputProtocol? {get set}
    var view: ViewInputProtocol? {get set}
    
    func setupData(data: LoadData.Response)
    
    func loadData()
}

class VipPresenter : NSObject, PresenterInputProtocol {
    func setupData(data: LoadData.Response) {
        switch data {
        case .success(let data):
            let model = LoadData.ViewModel(dataToShow: data as! String)
            view?.showData(data: model)
        default:
            break
        }
    }
    
    var interactor: InteractorInputProtocol?
    
    weak var view: ViewInputProtocol?
    
    func doSome() {
        interactor?.loadData()
    }
    
    func loadData() {
        interactor?.loadData()
    }
    
    
}
