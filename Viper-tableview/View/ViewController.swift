//
//  ViewController.swift
//  Viper-tableview
//
//  Created by Galina Iaroshenko on 13.12.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        navigationItem.title = "Task"
        
        //Показать таблицу
        //Anchor
        view.addSubview(taskTableView)
        taskTableView.translatesAutoresizingMaskIntoConstraints = false
        taskTableView.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor).isActive = true
        taskTableView.leftAnchor.constraint(equalTo:view.safeAreaLayoutGuide.leftAnchor).isActive = true
        taskTableView.rightAnchor.constraint(equalTo:view.safeAreaLayoutGuide.rightAnchor).isActive = true
        taskTableView.bottomAnchor.constraint(equalTo:view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        taskTableView.dataSource = self
        taskTableView.delegate = self
        taskTableView.register(TaskTableViewCell.self, forCellReuseIdentifier: "taskCell")
        
        

    }


}

