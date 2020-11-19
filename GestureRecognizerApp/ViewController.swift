//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by aytug on 19.11.2020.
//  Copyright © 2020 aytug. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    var isJames = true
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
    
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    @objc func changePic(){
        
        
        if isJames {
            imageView.image = UIImage(named: "metallica2")
            myLabel.text = "Lars Ulrich"
            isJames = false
        } else {
            imageView.image = UIImage(named: "metallica")
            myLabel.text = "James Hetfield"
            isJames = true
        }
        
    }

}

