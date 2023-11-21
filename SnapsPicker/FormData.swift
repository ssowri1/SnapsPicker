//
//  FormData.swift
//  FormTest
//
//  Created by Sowrirajan S on 21/11/23.
//

import Foundation
import SwiftUI

public struct FormData {
    public var name: String = ""
    public var email: String = ""
    public var phone: String = ""
    public var image: Image = Image("userPlaceholder")
    
    public init(name: String = "", email: String = "", phone: String = "", image: Image = Image("userPlaceholder")) {
        self.name = name
        self.email = email
        self.phone = phone
        self.image = image
    }
}
