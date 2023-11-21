//
//  FormData.swift
//  FormTest
//
//  Created by Sowrirajan S on 21/11/23.
//

import Foundation
import SwiftUI

//MARK: - FORM DATA MODEL
public struct FormData {
    public var name: String = ""
    public var email: String = ""
    public var phone: String = ""
    public var image: Image = Image("photo.circle.fill")
    
    public init(name: String = "", email: String = "", phone: String = "", image: Image = Image("photo.circle.fill")) {
        self.name = name
        self.email = email
        self.phone = phone
        self.image = image
    }
}
