//
//  Coordinator.swift
//  SnapsPicker
//
//  Created by Sowrirajan S on 21/11/23.
//

import Foundation
import SwiftUI

//MARK: - COORDINATOR CLASS
// To configure the Image picker controller.
public class Coordinator: NSObject {
    @Binding
    private var presentationMode: PresentationMode
    private let sourceType: UIImagePickerController.SourceType
    private let onImagePicked: (UIImage) -> Void
    
    public init(presentationMode: Binding<PresentationMode>,
                sourceType: UIImagePickerController.SourceType = .photoLibrary,
                onImagePicked: @escaping (UIImage) -> Void) {
        _presentationMode = presentationMode
        self.sourceType = sourceType
        self.onImagePicked = onImagePicked
    }
}

//MARK: - EXTENSION: Coordinator
// To configure the Image picker controller.
extension Coordinator: UINavigationControllerDelegate,
                       UIImagePickerControllerDelegate {
    // To catch and process the image once after picked by the user
    public func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.originalImage] as! UIImage
        onImagePicked(image)
        presentationMode.dismiss()
    }
    
    // Called after cancel the Image picker controller
    public func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        presentationMode.dismiss()
    }
}
