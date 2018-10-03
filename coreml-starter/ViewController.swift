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
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupImagePickerController()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    @IBAction func cameraButtonTapped(_ sender: UIBarButtonItem) {
        self.present(self.imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[.originalImage] as? UIImage {
            self.imageView.image = pickedImage
            
            guard let ciImage = CIImage(image: pickedImage) else {
                fatalError("Could not convert picked image into CIImage!")
            }
            
        }
        self.imagePicker.dismiss(animated: true, completion: nil)
    }
    
    func setupImagePickerController() {
        self.imagePicker.delegate = self
        self.imagePicker.sourceType = .camera
        self.imagePicker.allowsEditing = false
    }
    
}


