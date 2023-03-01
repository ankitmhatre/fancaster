//
//  OtpView.swift
//  Fancaster
//
//  Created by Ankit Mhatre on 1/14/23.
//

import SwiftUI
import FirebaseAuth


struct OtpView: View {
    
    @StateObject var viewModel = OtpViewModel()
          @State var isFocused = false
          
          let textBoxWidth = UIScreen.main.bounds.width / 8
          let textBoxHeight = UIScreen.main.bounds.width / 8
          let spaceBetweenBoxes: CGFloat = 10
          let paddingOfBox: CGFloat = 1
          var textFieldOriginalWidth: CGFloat {
              (textBoxWidth*6)+(spaceBetweenBoxes*3)+((paddingOfBox*2)*3)
          }
    
    
   





    let backgroundGradient =  LinearGradient(gradient: Gradient(colors: [Color("blue_header_bg_light"), Color("blue_header_bg_dark")]), startPoint: .top, endPoint: .bottom)
    
    
    var body: some View {
        ZStack{
            
            backgroundGradient
            
            
            VStack {
                ZStack{
                    Image("login_header_board_dark_blue")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    
                    VStack {
                        
                        
                        
                        Image("fancaster_white_text")
                            
                            .resizable()
                            .frame(width: 280.0, height: 48)
                            .padding(EdgeInsets.init(top: 20, leading: 0, bottom: 0, trailing: 0))
                            .imageScale(.medium)
                        
                        Text("Enter sent code")
                            .bold()
                            .foregroundColor(.white)
                            .font(.system(size:36))
                        
                        
                        
                    }
                    
               
                    
                    
                }
                .padding(EdgeInsets.init(top: 0, leading: 0, bottom: 20, trailing: 0))
                
                Spacer()
            ZStack {
                                  
                                  HStack (spacing: spaceBetweenBoxes){
                                      
                                      otpText(text: viewModel.otp1)
                                      otpText(text: viewModel.otp2)
                                      otpText(text: viewModel.otp3)
                                      otpText(text: viewModel.otp4)
                                      otpText(text: viewModel.otp5)
                                      otpText(text: viewModel.otp6)
                                   
                                  }
                                  
                                  
                                  TextField("", text: $viewModel.otpField)
                                  .frame(width: isFocused ? 0 : textFieldOriginalWidth, height: textBoxHeight)
                                  .disabled(viewModel.isTextFieldDisabled)
                            
                                  .textContentType(.oneTimeCode)
                                  .foregroundColor(.clear)
                                  .accentColor(.clear)
                                  .background(Color.clear).scrollDismissesKeyboard(.immediately)
                                  .keyboardType(.numberPad)
                                  
                                  
                              }
       
        
            
 
            
            
            
            
            NavigationLink(destination: TransitionScreenView()) {
                
                Button(action:{
                    
                    
                    
                    let authVerificationID =   UserDefaults.standard.string(forKey: "authVerificationID")
                    print(authVerificationID)
                    
                    let credential =  PhoneAuthProvider.provider().credential(withVerificationID: authVerificationID ?? "<no_name>", verificationCode: viewModel.otpField)
                    
                                    
                                    Auth.auth().signIn(with: credential) { (res, err) in

                                        if err != nil{
                                            print(err?.localizedDescription)
//                                            self.msg = (err?.localizedDescription)!
//                                            self.alert.toggle()
//                                            return
                                        }

                                        print(res?.user.uid)
                                        UserDefaults.standard.set(true, forKey: "status")

                                        NotificationCenter.default.post(name: NSNotification.Name("statusChange"), object: nil)
                                    }
                })
                {
                    
                    ZStack{
                        Rectangle()
                            .fill(.black)
                            .frame(minWidth: 0, maxWidth: 300, minHeight: 56, maxHeight: 56)
                        
                            .cornerRadius(50)
                        
                        
                            .opacity(0.3)
                        
                        Text("VALIDATE")
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 56, maxHeight: 56)
                        
                        
                            .font(.system(size: 18))
                            .fontWeight(.black)
                        
                            .foregroundColor(.white)
                        
                        
                    }
                    .padding(EdgeInsets.init(top: 70, leading: 0, bottom: 0, trailing: 0))
                    
                }
                    }
                   // If you have this
                    
         
                   
            
            Spacer()
                
        }
           
        
            .onTapGesture {
                        hideKeyboard()
                }
       
       
        }
        .ignoresSafeArea()
    }
        
    private func otpText(text: String) -> some View {
           
           return Text(text)
               .font(.title)
               .foregroundColor(.black)
            
               .frame(width: textBoxWidth, height: textBoxHeight)
               .background(VStack{
                 Spacer()
                 RoundedRectangle(cornerRadius: 10)
                     .frame(width: 50, height: 50)
                    
                })
               .padding(paddingOfBox)
               .foregroundColor(.white)
    }
    }

    struct OtpView_Previews: PreviewProvider {
    static var previews: some View {
        OtpView()
    }
    }



extension View {
    func hideKeyboard() {
        let resign = #selector(UIResponder.resignFirstResponder)
        UIApplication.shared.sendAction(resign, to: nil, from: nil, for: nil)
    }
}
