//
//  InteractorOutput.swift
//  Viper-tableview
//
//  Created by Galina Iaroshenko on 13.12.2022.
//

import UIKit

protocol InteractorOutputProtocol: AnyObject {
    var presenter: PresenterInputProtocol? {get set}
    
    func loadData()
}

class InteractorOutput: InteractorOutputProtocol {
    var presenter: PresenterInputProtocol?
    
    func loadData() {
        <#code#>
    }
    
    
    
    //Во View?
    let containerView:UIView = {
           let view = UIView()
           view.translatesAutoresizingMaskIntoConstraints = false
           view.clipsToBounds = true // this will make sure its children do not go out of the boundary
           return view
       }()
       
    let priceDetailedLabel:UILabel = {
        let label = UILabel()
        //self.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    let numberOfSignsLabel:UILabel = {
        let label = UILabel()
        //self.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    

}
