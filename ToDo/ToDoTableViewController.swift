//
//  ToDoTableViewController.swift
//  ToDo
//
//  Created by Scotty Shaw on 7/27/16.
//  Copyright © 2016 ___sks6___. All rights reserved.
//

import UIKit

struct ToDo {
    let title: String
    var isFinished: Bool = false
    
    init(title: String) {
        self.title = title
    }
}

class ToDoTableViewController: UITableViewController {
    
    var toDos: [ToDo] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    
    func addToDo(toDo: ToDo) {
        toDos.append(toDo)
    }
}
