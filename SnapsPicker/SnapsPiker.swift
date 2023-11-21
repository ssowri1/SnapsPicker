//
//  SnapsPiker.swift
//  SnapsPicker
//
//  Created by Sowrirajan S on 14/11/23.
//

import Foundation
import UIKit
import SwiftUI

//MARK: - SNAPS PICKER
// Main class to access image through Gallery or Camera
public struct SnapsPicker {

    //MARK: - PROPERTIES
    @Environment(\.presentationMode)
    private var presentationMode
    let sourceType: UIImagePickerController.SourceType
    let onImagePicked: (UIImage) -> Void
    
    //MARK: - INITIALISER
    public init(sourceType: UIImagePickerController.SourceType,
                onImagePicked: @escaping (UIImage) -> Void) {
        self.sourceType = sourceType
        self.onImagePicked = onImagePicked
    }
    
    //MARK: - CUSTOM METHODS
    public func makeCoordinator() -> Coordinator {
        return Coordinator(presentationMode: presentationMode,
                           sourceType: sourceType,
                           onImagePicked: onImagePicked)
    }
}
