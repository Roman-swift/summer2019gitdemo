//
//  ViewController.swift
//  LectionGit
//
//  Created by Роман Родителев on 7/8/19.
//  Copyright © 2019 Роман Родителев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Photo Access", message: "Do you alow to use your photos?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(okAction)
        
         let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        alert.addAction(cancelAction)

        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func showActionSheet(_ sender: Any) {
        
        enum Films: String {
        case film1 = "Человек паук"
        case film2 = "Алладин"

        }
        
        
        let alert = UIAlertController(title: nil, message: "Choose Film", preferredStyle: .actionSheet)
        
        let handler:(_ type: Films) -> (UIAlertAction) -> Void = { type in return {
            action in print (type.rawValue)
        }
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        alert.addAction(cancelAction)
        
        let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(okAction)
        
        let film1 = UIAlertAction(title: "Человек паук", style: .default, handler: nil)
        alert.addAction(film1)
        
        let film2 = UIAlertAction(title: "Аллдаин", style: .default, handler: nil)
         alert.addAction(film2)
        
        present(alert, animated: true, completion: nil)

    }
}

