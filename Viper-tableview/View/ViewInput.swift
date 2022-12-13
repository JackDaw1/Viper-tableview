//
//  ViewInput.swift
//  Viper-tableview
//
//  Created by Galina Iaroshenko on 13.12.2022.
//

import UIKit

protocol ViewInputProtocol : AnyObject {
    
    var presenter: PresenterInputProtocol? {get set}
    
    //тут методы из Presenter
    //func showData(data: LoadData.ViewModel)
    
}

class ViewInput: UIViewController, UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return task.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath) as! TaskTableViewCell
        cell.task = task[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 100
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let task = task[indexPath.row]
        let task = task[indexPath.row]
        let detailVC = DetailViewController()
        detailVC.task = task
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}
