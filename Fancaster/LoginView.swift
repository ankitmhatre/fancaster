//
//  ContentView.swift
//  Fancaster
//
//  Created by Ankit Mhatre on 1/8/23.
//

import SwiftUI


struct LoginView: View {


let backgroundGradient = LinearGradient(
    colors: [Color(uiColor: UIColor(red: 5, green: 191, blue: 247, alpha: 1)), Color(uiColor: UIColor(red: 66, green: 25, blue: 79, alpha: 1))],
    startPoint: .top, endPoint: .bottom)


@State private var phoneNumber = ""
@State private var username: String = ""
@FocusState private var emailFieldIsFocused: Bool

var body: some View {
    VStack {
        VStack{
            Image("login_header")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Welcome")
                .bold()
                .foregroundColor(.white)
                .font(.system(size:36))
        }
        .padding(EdgeInsets(top: 72, leading: 0, bottom: 0, trailing: 0))
        
        
        Spacer()
        
        Image(systemName: "faceid")
            .resizable()
            .frame(width: 48, height: 48)
            .padding()
            
            .foregroundColor(.white)
        
        TextField(
            "Phone number",
            text: $username
        )
        .keyboardType(.phonePad)
        .submitLabel(.return)
        .frame(height: 55)
        .textFieldStyle(PlainTextFieldStyle()).foregroundColor(.black)
        .italic()
        
        .padding([.horizontal], 36)
        .background(.white)
        .cornerRadius(50)
        .padding([.horizontal], 56)
       
        
     
        .focused($emailFieldIsFocused)
        .onSubmit {
            //                    validate(name: username)
            print("onbSubmit")
        }
        .textInputAutocapitalization(.never)
        .disableAutocorrection(true)
        
        
        Text(username)
            .foregroundColor(emailFieldIsFocused ? .red : .blue)
        
        
        NavigationLink(destination: OtpView()) {
            
//            Button(action: {
//                print("Clicked")
//            }){
                
                
                Text("LOGIN")
                    .frame(minWidth: 300, maxWidth: 300, minHeight: 56)
                    .font(.system(size: 18))
                
                    .foregroundColor(.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(Color.white, lineWidth: 3)
                    )
//            }
//            // If you have this
//            .cornerRadius(50)
//
//
//            .padding([.horizontal], 56)
            
            
        }
        

        Text("Don't have an account yet?")
            .foregroundColor(.white)
            .padding([.vertical], 12)
            .fontWeight(.semibold)
        
        
        
        
        NavigationLink(destination: SignUpView()) {
                       
                      
        Button(action: {
        print("Clicked")
        }){
            
            
                    Text("SIGNUP")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 56)
                        .font(.system(size: 18))
                        .fontWeight(.black)
                        .background(Color("signup_button_color"))
                        .foregroundColor(.white)
                  
                }
               // If you have this
                .cornerRadius(50)
       
     
                .padding([.horizontal], 56)
        }
    }
       
    
.background(Color("login_color_top"))
}
    
}

struct LoginView_Previews: PreviewProvider {
static var previews: some View {
    LoginView()
}
}
