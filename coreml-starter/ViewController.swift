//
//  ViewController.swift
//  coreml-starter
//
//  Created by Dmytro Pavlenko on 9/26/18.
//  Copyright © 2018 Dmytro Pavlenko. All rights reserved.
//

import UIKit
import CoreML
import Vision // For Image Processing

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    @IBAction func cameraButtonTapped(_ sender: UIBarButtonItem) {
    }
    
}


