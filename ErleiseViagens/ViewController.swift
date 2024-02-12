/*
//  ViewController.swift
//  ErleiseViagens
//
//  Created by Sósthenes Oliveira Lima on 11/02/24.
*/

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var viagensTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viagensTableView.dataSource = self
        
    }
        // Do any additional setup after loading the view.
}
    
    extension ViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 10
        }
    
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
            
            cell.textLabel?.text = "Viagem \(indexPath.row)"
            
            return cell
            
        }
   }

