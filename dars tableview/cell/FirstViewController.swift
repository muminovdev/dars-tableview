//
//  FirstViewController.swift
//  dars tableview
//
//  Created by Mac on 17/12/22.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let arr = ["isroil", "baxtiyor", "jamshid"]
    let model = [
                 Person(name: "isroil", infoName: "I'm programmer", image: "box"),
                 Person(name: "baxtiyor", infoName: "I'm designer", image: "box"),
                 Person(name: "jamshid", infoName: "web designer", image: "box") ]
            let arrImage = ["box", "box"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CellTableViewCell
        cell.nameLabel.text = model[indexPath.row].name
        cell.image.image = UIImage(named: model[indexPath.row].image)
        cell.infoLabel.text = model[indexPath.row].infoName
        
        return cell
        
    }
    
    let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "tableView"

        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(CellTableViewCell.self, forCellReuseIdentifier: "cell")
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
