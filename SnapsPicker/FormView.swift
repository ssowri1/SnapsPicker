//
//  FormView.swift
//  FormTest
//
//  Created by Sowrirajan S on 21/11/23.
//

import SwiftUI

public struct FormView: View {
    //MARK: - PROPERTIES
    @State var name: String = ""
    @State var email: String = ""
    @State var phoneNumber: String = ""
    @State var showImagePicker: Bool = false
    @State var image: Image = Image("userPlaceholder")
    @Environment(\.dismiss) var dismiss
    var onDismiss: ((_ model: FormData) -> Void)?
    @State var formData: FormData = FormData()
    
    public init(onDismiss: ((_: FormData) -> Void)?, formData: FormData?) {
        self.onDismiss = onDismiss
    }
    
    public var body: some View {
        Form {
            HStack {
                Spacer()
                ZStack {
                    Circle()
                        .foregroundColor(.teal)
                        .padding()
                        .frame(width: 164, height: 164)
                    
                    image.resizable().frame(width: 100, height: 100)
                        .onTapGesture(perform: {
                            self.showImagePicker.toggle()
                        })
                        .cornerRadius(50)
                }
                Spacer()
            }
            .sheet(isPresented: $showImagePicker) {
                SnapsPicker(sourceType: .photoLibrary) { image in
                    self.image = Image(uiImage: image)
                }
            }
            
            Section("User Information") {
                TextField("Name", text: $name)
                TextField("Email", text: $email)
                TextField("Phone number", text: $phoneNumber)
            }
            Button("X") {
                self.formData = FormData(name: name, email: email, phone: phoneNumber, image: image)
                onDismiss?(formData)
                dismiss()
            }
        }
        .navigationTitle("User Profile")
    }
}

