/*
//  ViewController.swift
//  ErleiseViagens
//
//  Created by Sósthenes Oliveira Lima on 11/02/24.
Teste01
Teste02
 
*/


import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var viagensTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraTableView()
        view.backgroundColor =  UIColor(red: 30.0/255.0, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1)
        
    }
        // Do any additional setup after loading the view.
    
    func configuraTableView() {
        viagensTableView.register(UINib(nibName: "ViagemTableViewCell", bundle: nil), forCellReuseIdentifier: "ViagemTableViewCell")
        viagensTableView.dataSource = self
        viagensTableView.delegate =  self
    }
    
}
    
    extension ViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 10
        }
    
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
            guard let celulaViagem = tableView.dequeueReusableCell(withIdentifier: "ViagemTableViewCell") as? ViagemTableViewCell else {
                fatalError("error to create ViagemTableViewCell")
            }
            
            
            
            return celulaViagem
            
        }
   }

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader
            headerView?.configurarView() //LINHA DO CODIGO QUE NAO TINHA FEITO

            return headerView
        }

        return nil
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone ? 400 : 470


    }
}

