# SnapsPicker
It's a smart KeyBoard manager with an active text field using Scroll View along with Constraints in Objective C & Swift 4. The codeless drop-in universal library is compatible with both Swift and Objective C. It will show the chosen text field upon the keyboard while editing or anything else.

## Installation over Cocoapod

### Step I
Make sure you have initialised pod in your project repository -> In yout podfile paste the below line -> Save & close it.

    pod 'SnapsPicker'

Initiate the pod install through the project repository

### Step II
Open your module  where you have to make the Image picker configuration and paste the below code snippet to open the SnapsPicker over Button action

    @State var showImagePicker: Bool = false
    @State var image: Image? = nil
    
    VStack {
                Button(action: {
                    self.showImagePicker.toggle()
                }) {
                    Text("Choose Image")
                }
                image?.resizable().frame(width: 100, height: 100)
            }
            .sheet(isPresented: $showImagePicker) {
                SnapsPicker(sourceType: .photoLibrary) { image in
                    self.image = Image(uiImage: image)
                }
            }

    
Awesome! You're done ultimately. any make fun with your application 🐶.

## Authors

[Ssowri1](https://github.com/ssowri1)

## License

This project is licensed under the MIT 2.0

## Support or Contact

Having trouble with Pages? Kindly [contact support](https://github.com/contact) and we’ll help you sort it out.


