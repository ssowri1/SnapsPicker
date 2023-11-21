//
//  SnapPicker+extension.swift
//  SnapsPicker
//
//  Created by Sowrirajan S on 21/11/23.
//

import Foundation
import SwiftUI

//MARK: - UIViewControllerRepresentable Delegate METHODS
extension SnapsPicker: UIViewControllerRepresentable {
    
    public func makeUIViewController(context: UIViewControllerRepresentableContext<SnapsPicker>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = sourceType
        picker.delegate = context.coordinator
        return picker
    }
    
    public func updateUIViewController(_ uiViewController: UIImagePickerController,
                                       context: UIViewControllerRepresentableContext<SnapsPicker>) { }
}
