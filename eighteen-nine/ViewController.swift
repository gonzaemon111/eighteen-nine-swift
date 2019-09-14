//
//  ViewController.swift
//  eighteen-nine
//
//  Created by 櫻庭豪騎 on 2019/09/14.
//  Copyright © 2019 櫻庭豪騎. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tableView: UITableView = UITableView(frame: view.frame, style: .plain)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
    }

    // UITableViewDataSource
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int
    {
        return 10
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell",
                                                                  for: indexPath)
        cell.textLabel?.text = "\(indexPath[1] + 1)行目"
        return cell
    }

}

