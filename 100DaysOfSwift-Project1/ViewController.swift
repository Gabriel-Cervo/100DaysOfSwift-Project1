//
//  ViewController.swift
//  100DaysOfSwift-Project1
//
//  Created by João Gabriel Dourado Cervo on 24/01/21.
//

import UIKit

class ViewController: UITableViewController {
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default // Trabalhar com filesystem
        let path = Bundle.main.resourcePath! // diretorio do bundle do app
        let items = try! fm.contentsOfDirectory(atPath: path) // conteudo do diretorio

        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
    }
    
    // Quantas linhas na tableview
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    // Conteudo de cada linha
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath) // Cria uma cell reusavel
        cell.textLabel?.text = pictures[indexPath.row]
        
        return cell
    }


}

