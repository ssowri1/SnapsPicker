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
    @State var image: Image = Image(systemName: "userPlaceholder")
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
                    image.resizable().frame(width: 100, height: 100)
                        .onTapGesture(perform: {
                            self.showImagePicker.toggle()
                        })
                        .cornerRadius(50)
                        .clipShape(Circle())
                    Image(systemName: "userPlaceholder")
                        .position(x: 100, y: 100)
                        .frame(width: 150, height: 150)
                        .foregroundColor(.white)

                }
                Spacer()
            }
            .sheet(isPresented: $showImagePicker) {
                SnapsPicker(sourceType: .photoLibrary) { image in
                    self.image = Image(uiImage: image)
                }
            }
            
            Section(AppConstants.userInformation) {
                TextField(AppConstants.name, text: $name)
                TextField(AppConstants.email, text: $email)
                TextField(AppConstants.phoneNumber, text: $phoneNumber)
            }
            HStack {
                Spacer()
                Button(AppConstants.done) {
                    self.formData = FormData(name: name, email: email, phone: phoneNumber, image: image)
                    onDismiss?(formData)
                    dismiss()
                }
                .frame(width: 180)
                .bold()
                .padding(20)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(12)
                Spacer()
            }
        }
    }
}
