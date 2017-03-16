//
//  ViewController.swift
//  TableViewExample
//
//  Created by Pavel Koyushev on 16.03.17.
//  Copyright © 2017 pkoyushev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var fruit = ["Банан", "Виноград", "Яблоко", "Апельсин", "Авокадо", "Персик", "Абрикос", "Лимон", "Лайм", "Гранат", "Киви"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        //cell.lblDesc.text = "Text"
        cell.lblDesc.text = fruit[indexPath.row]
        cell.lblNum.text = String(indexPath.row + 1)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 10
        return fruit.count
    }

}

