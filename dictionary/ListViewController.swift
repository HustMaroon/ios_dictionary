//
//  ListViewController.swift
//  dictionary
//
//  Created by Do Xuan Thanh on 10/16/19.
//  Copyright © 2019 monstar-lab. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }

}

extension ListViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ListViewCell", for: indexPath) as? ListViewCell else {
            fatalError("dequeued cell not an instance of LsitViewCell")
            
        }
        cell.label.text = "\(data[indexPath.row].key) : \(data[indexPath.row].meaning)"
        return cell
    }
}
