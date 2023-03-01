//
//  ContentView.swift
//  Fancaster
//
//  Created by Ankit Mhatre on 1/8/23.
//

import SwiftUI
import FirebaseAuth


struct LoginView: View {
    
    
    
    let backgroundGradient =  LinearGradient(gradient: Gradient(colors: [Color("blue_header_bg_light"), Color("blue_header_bg_dark")]), startPoint: .top, endPoint: .bottom)
    
    
    @State private var phoneNumber = "9173196399"
    @State private var username: String = ""
    @FocusState private var emailFieldIsFocused: Bool
    
    var body: some View {
        ZStack{
            backgroundGradient
            
            VStack {
                ZStack{
                    Image("login_header_board_dark_blue")
                    
                        .resizable()
                        .frame(width: 500.0, height: 370)
                        .foregroundColor(.accentColor)
                    
                    VStack{
                        Image("login_header")
                        
                            .resizable()
                            .frame(width: 84.0, height: 84)
                            .foregroundColor(.accentColor)
                        
                        Image("fancaster_white_text")
                        
                            .resizable()
                            .frame(width: 280.0, height: 48)
                            .padding(EdgeInsets.init(top: 20, leading: 0, bottom: 0, trailing: 0))
                            .imageScale(.medium)
                        
                        Text("Welcome")
                            .bold()
                            .foregroundColor(.white)
                            .font(.system(size:36))
                    }
                    .padding(EdgeInsets(top: 72, leading: 0, bottom: 0, trailing: 0))
                    
                }
                Spacer()
                
                Image(systemName: "faceid")
                    .resizable()
                    .frame(width: 48, height: 48)
                    .padding()
                    .foregroundColor(.white)
                
                TextField(
                    "Phone number",
                    text: $phoneNumber
                )
                .keyboardType(.phonePad)
                .submitLabel(.return)
                .frame(width:240, height: 55)
                .textFieldStyle(PlainTextFieldStyle()).foregroundColor(.black)
                .italic()
                .padding([.horizontal], 36)
                .background(.white)
                .cornerRadius(50)
                .padding([.horizontal], 56)
                .focused($emailFieldIsFocused)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                
                
       
                
                
                NavigationLink(destination: OtpView().onAppear{
                    let credentials =      PhoneAuthProvider.provider()
                        .verifyPhoneNumber("+1" + self.phoneNumber, uiDelegate: nil) { verificationID, error in
                            if let error = error {
                                
                                //                                                              self.msg = error.localizedDescription
                                //                                                              self.alert.toggle()
                                //                                                            print(error.localizedDescription)
                                
                                return
                            }
                            print("Verification ID")
                            print(verificationID)
                            UserDefaults.standard.set(verificationID, forKey: "authVerificationID")
                            //NavigationLink(destination: OtpView())
                            
                            // Sign in using the verificationID and the code sent to the user
                            // ...
                            return
                        }
                    
                }){
                        
                        
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
                        
                        
                        
                        
                        
                        Text("SIGNUP")
                            .frame(minWidth: 0, maxWidth: 240, minHeight: 56)
                        
                            .font(.system(size: 18))
                            .fontWeight(.black)
                            .background(Color("signup_button_color"))
                            .foregroundColor(.white)
                            .cornerRadius(50)
                        
                    }
                    
                    // If you have this
                    
                    
                    .padding([.bottom], 70)
                    
                }
                
            
            
            
            
            
        }
        .ignoresSafeArea(.all)
        
    }
}

struct LoginView_Previews: PreviewProvider {
static var previews: some View {
    LoginView()
}
}
