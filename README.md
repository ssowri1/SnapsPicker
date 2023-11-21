# SnapsPicker
Through SnapsPicker we can access forms and we can enter our data then retrive it through inbuilt framework. The codeless drop-in universal library is compatible with both SwiftUI.

## Installation over Cocoapod

### Step I
Make sure you have initialised pod in your project repository -> In yout podfile paste the below line -> Save & close it.

    pod 'SnapsPicker'

Initiate the pod install through the project repository

### Step II
Open your module  where you have to make the Image picker configuration and paste the below code snippet to open the Form view over Button action

    import SnapsPicker

    struct ContentView: View {
    @State private var showForm = false
    private var formData = FormData()
    
    var body: some View {

        Button("Show Form") {
            showForm = true
        }
        .sheet(isPresented: $showForm) {
            FormView(onDismiss: information, formData: formData)
        }
    }
    
    func information(data: FormData) {
        // You can append the form data to appropriate UI.
      }
    }
    


    
### Optional configuration

    struct ContentView: View {
    @State private var showForm = false
    @State var formData = FormData()
    @State var selectedImage: Image? = nil
    @State var name: Text?
    @State var email: Text?
    @State var phone: Text?

    var body: some View {
        Form {
            Section {
                HStack {
                    selectedImage
                        .frame(width: 80, height: 80)
                        .cornerRadius(40)
                        .aspectRatio(contentMode: .fill)
                    Spacer()
                    name?.frame(height: 34)
                    Spacer()
                }
                
                email?.frame(height: 34)
                phone?.frame(height: 34)
            }
            .listRowSeparator(.hidden)

            HStack {
                Spacer()
                Button("Open Form") {
                    showForm.toggle()
                }
                Spacer()
            }
            .sheet(isPresented: $showForm) {
                FormView(onDismiss: information, formData: formData)
            }
            .listRowSeparator(.hidden)
        }
    }
    
    func information(data: FormData) {
        selectedImage = data.image
            .resizable()
        name = Text(data.name)
        email = Text("✉️ " + data.email)
        phone = Text("📱 " + data.phone)
        }
    }



Awesome! You're done ultimately. any make fun with your application 🐶.

## Authors

[Ssowri1](https://github.com/ssowri1)

## License

This project is licensed under the MIT.

## Support or Contact

Having trouble with Pages? Kindly [contact support](https://github.com/contact) and we’ll help you sort it out.


