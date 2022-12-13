//
//  Router.swift
//  Viper-tableview
//
//  Created by Galina Iaroshenko on 13.12.2022.
//

import UIKit

protocol RouterProtocol : AnyObject {
    func createVC()->UIViewController?
}

class Router : RouterProtocol {
    
    func createVC() -> UIViewController? {
        let view = ViewController()
        let presenter: PresenterOutputProtocol = PresenterOutput()
        
        //?
        presenter.view = view as! any IView
        view.presenter = presenter
        return view
    }
}
