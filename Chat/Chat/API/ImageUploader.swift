//
//  ImageUploader.swift
//  Chat
//
//  Created by Lien-Tai Kuo on 2021/8/8.
//

import Firebase
import UIKit

struct ImageUploader {

    static func uploadImage(image: UIImage, completion: @escaping (String) -> Void) {
        guard let imageData = image.jpegData(compressionQuality: 0.5) else { return }

        let filename = NSUUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profile_images/\(filename)")

        ref.putData(imageData, metadata: nil) { _, error in
            if let error = error {
                print("DEBUG: Failed to upload image with error \(error.localizedDescription)")
                return
            }

            print("DEBUG: Successfully updated image to firebase storage..")

            ref.downloadURL { url, _ in
                guard let imageUrl = url?.absoluteString else { return }
                completion(imageUrl)
            }
        }

    }
}
