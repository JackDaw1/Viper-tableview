//
//  ViewOutput.swift
//  Viper-tableview
//
//  Created by Galina Iaroshenko on 13.12.2022.
//

import UIKit

protocol ViewOutputProtocol : AnyObject {
    var presenter: PresenterInputProtocol? {get set}
    
    //тут методы из Presenter
    func showData(data: LoadData.ViewModel)
    
}

//по тапу показываем содержимое ячейки
class ViewOutput: UIViewController, UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let task = task[indexPath.row]
        let task = task[indexPath.row]
        let detailVC = DetailViewController()
        detailVC.task = task
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}
