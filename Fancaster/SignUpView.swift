//
//  SignUpView.swift
//  Fancaster
//
//  Created by Ankit Mhatre on 1/14/23.
//

import SwiftUI

struct SignUpView: View {
    @State private var f_name: String = ""
    @State private var l_name: String = ""
    @State private var email: String = ""
    @State private var phoneNumber: String = ""
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
                
                
                //SIgnup up view
                
                TextField(
                    "First Name",
                    text: $f_name
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
               
                
             
                
                .onSubmit {
                    //                    validate(name: username)
                    print("onbSubmit")
                }
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                
                
                
                TextField(
                    "Last Name",
                    text: $l_name
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
               
                
             
                
                .onSubmit {
                    //                    validate(name: username)
                    print("onbSubmit")
                }
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                
                
                
                TextField(
                    "Email",
                    text: $email
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
               
                
             
                
                .onSubmit {
                    //                    validate(name: username)
                    print("onbSubmit")
                }
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                
                
                TextField(
                    "Phone Number",
                    text: $phoneNumber
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
               
                
             
                
                .onSubmit {
                    //                    validate(name: username)
                    print("onbSubmit")
                }
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                
                
                
                
  Button(action: {
  print("Clicked")
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
