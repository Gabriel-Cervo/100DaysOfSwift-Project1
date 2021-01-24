//
//  DetailViewController.swift
//  100DaysOfSwift-Project1
//
//  Created by João Gabriel Dourado Cervo on 24/01/21.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    
    var selectedImageName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Verifica se o nome de uma imagem foi passada, e coloca ela no imageView
        if let imageToLoad = selectedImageName {
            imageView.image = UIImage(named: imageToLoad)
        }
        
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
