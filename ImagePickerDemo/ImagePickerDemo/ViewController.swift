//
//  ViewController.swift
//  ImagePickerDemo
//
//  Created by Olimpia on 1/14/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var cameraButton: UIBarButtonItem!
    
    private var imagePickerViewController: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       setupImagePickerViewController()
       imageView.contentMode = .scaleToFill // this is the default
       //retrieve and set image view if photo journal exist
        updateUI()
        
    }
    
    private func updateUI() {
        if let photoJournal = PhotoJournalModel.getPhotoJournal() {
            let image = UIImage(data: photoJournal.imageData)
            imageView.image = image
        } else {
            print("photo journal does not exist")
        }
    }
    
    private func setupImagePickerViewController(){
        imagePickerViewController = UIImagePickerController()
        imagePickerViewController.delegate = self
        if !UIImagePickerController.isSourceTypeAvailable(.camera) {
            cameraButton.isEnabled = false
        }
    }
    
    private func showImagePickerController() {
        present(imagePickerViewController, animated: true, completion: nil)
    }

    @IBAction func camenraButtonPressed(_ sender: Any) {
        imagePickerViewController.sourceType = .camera
        showImagePickerController()
    }
    
    @IBAction func pirvateLibraryPressed(_ sender: Any) {
        imagePickerViewController.sourceType = .photoLibrary
        showImagePickerController()
    }
    
    private func savePhotoJournal(image: UIImage) {
        //photoJournal: createdAt, desription, imageData
        if let imageData = image.jpegData(compressionQuality: 0.5) {
            let photoJournal = PhotoJournal.init(createdAt: "no date", imageData: imageData, description: "coll wallpaper")
            PhotoJournalModel.savePhoto(photoJournal: photoJournal)
        }
    }
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.image = image
            savePhotoJournal(image: image)
        } else {
            print("Original image is nil")
        }
        dismiss(animated: true, completion: nil)
        
    }
}
