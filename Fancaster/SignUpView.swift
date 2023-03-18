//
//  SignUpView.swift
//  Fancaster
//
//  Created by Ankit Mhatre on 1/14/23.
//

import SwiftUI
import FirebaseAuth

struct SignUpView: View {
    
    @StateObject var viewModel = SignUpViewModel()
    
    
    
    var body: some View {
     
        ZStack{
            
       
        Image("signup_bg")
       
                .resizable()
            .frame(height: 1400)
          
            .ignoresSafeArea()
            VStack{
                Image("plain_headphones")
                
                Text("Sign up for Fancaster, and create in new experience in broadcasting.")
                    .foregroundColor(.white)
                    .fontWeight(.black)
                    .padding([.horizontal], 70)
                
                
  
              
                
                
              
                
                
                HStack{
                    
                 TextField(
                    "+1",
                    text: $viewModel.countryCode
                )
                 .frame(width:30)
                
                    Divider()
                TextField(
                    "Phone number",
                    text: $viewModel.phoneNumber
                )
                    
            }
                .font(Font.system(size: 14, design: .default))
                .keyboardType(.phonePad)
                .submitLabel(.return)
                .frame(height: 55)
                .textFieldStyle(PlainTextFieldStyle()).foregroundColor(.black)
                .italic()
                
                .padding([.horizontal], 36)
                
                .background(.white)
                .cornerRadius(50)
                .padding([.horizontal], 56)
               
                
             
                
                .onSubmit {
                    //                    validate(name: username)
                    print("onbSubmit")
                }
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                
                
                NavigationLink(destination: OtpView().onAppear{
                    let credentials =      PhoneAuthProvider.provider()
                        .verifyPhoneNumber(viewModel.countryCode + viewModel.phoneNumber, uiDelegate: nil) { verificationID, error in
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
      
      
              Text("SIGNUP")
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 56)
                  .font(.system(size: 18))
                  .fontWeight(.black)
                  .background(Color("magenta"))
                  .foregroundColor(.white)
            
          }
         // If you have this
          .cornerRadius(50)
 
                    .padding([.horizontal], 56)
            }
            
    
            ZStack{
                Circle()
                                .fill(Color("magenta"))
                                .offset(y: 500)
                                .frame(width: 400, height: 700)
                                .blur(radius: 5)
                            
                                
            
              Image("person")
                .resizable()
                  .frame(width:400, height: 250, alignment: .bottom)
                  .offset(x:30, y:350)
                
                 
            }
                
                  
              
       
        }
        .cornerRadius(20)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
