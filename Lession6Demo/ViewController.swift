//
//  ViewController.swift
//  Lession6Demo
//
//  Created by le.huu.dung on 8/29/18.
//  Copyright © 2018 le.huu.dung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var gits: [Gits]?
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ServerAPI.shared.getData { (gitList) in
            self.gits = gitList
            self.tableView.reloadData()
        }
        self.tableView.register(UINib.init(nibName: "GitCell", bundle: nil), forCellReuseIdentifier: "GitCell")
    }

   
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if gits != nil {
            return gits!.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GitCell") as! GitCell
        cell.bind(git: gits![indexPath.row])
        return cell 
    }
    
}

