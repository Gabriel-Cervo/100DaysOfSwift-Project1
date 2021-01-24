//
//  ViewController.swift
//  100DaysOfSwift-Project1
//
//  Created by João Gabriel Dourado Cervo on 24/01/21.
//

import UIKit

class ViewController: UIViewController {
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
        
        print(pictures)
    }


}

