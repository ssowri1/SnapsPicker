//
//  SnapsPiker.swift
//  SnapsPicker
//
//  Created by Sowrirajan S on 14/11/23.
//

import Foundation
import UIKit
import SwiftUI

//struct SnapsPicker: UIViewControllerRepresentable {
//    
//    @Environment(\.presentationMode)
//    private var presentationMode
//    
//    let sourceType: UIImagePickerController.SourceType
//    let onImagePicked: (UIImage) -> Void
//    
//    final class Coordinator: NSObject,
//                             UINavigationControllerDelegate,
//                             UIImagePickerControllerDelegate {
//        
//        
//        @Binding
//        private var presentationMode: PresentationMode
//        private let sourceType: UIImagePickerController.SourceType
//        private let onImagePicked: (UIImage) -> Void
//        
//        init(presentationMode: Binding<PresentationMode>,
//             sourceType: UIImagePickerController.SourceType,
//             onImagePicked: @escaping (UIImage) -> Void) {
//            _presentationMode = presentationMode
//            self.sourceType = sourceType
//            self.onImagePicked = onImagePicked
//        }
//        
//        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//            let image = info[.originalImage] as! UIImage
//            onImagePicked(image)
//            presentationMode.dismiss()
//        }
//        
//        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
//            presentationMode.dismiss()
//        }
//    }
//    
//    func makeCoordinator() -> Coordinator {
//        return Coordinator(presentationMode: presentationMode,
//                           sourceType: sourceType,
//                           onImagePicked: onImagePicked)
//    }
//    
//    func makeUIViewController(context: UIViewControllerRepresentableContext<SnapsPicker>) -> UIImagePickerController {
//        let picker = UIImagePickerController()
//        picker.sourceType = sourceType
//        picker.delegate = context.coordinator
//        return picker
//    }
//    
//    func updateUIViewController(_ uiViewController: UIImagePickerController,
//                                context: UIViewControllerRepresentableContext<SnapsPicker>) {
//        
//    }
//}

