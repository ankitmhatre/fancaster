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
    
    
   

    @State private var phoneNumber = ""
    @State private var username: String = ""
    @FocusState private var emailFieldIsFocused: Bool

    var body: some View {
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [Color("magenta"), Color("gradient_blue")]), startPoint: .bottom, endPoint: .top)
Circle()
                .fill(Color("violet"))
                .offset(y: -500)
                .frame(width: 800, height: 800)
            
                
  
        VStack {
        
            Spacer()
                    .frame(height: 80)
            VStack{
                Image("fancaster_logo")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Enter sent code")
                    .bold()
                    .foregroundColor(.white)
                    .font(.system(size:36))
            }
            .padding(EdgeInsets(top: 72, leading: 0, bottom: 0, trailing: 0))
            
            
            Spacer()
          
            
            
            
            ZStack {
                                  
                                  HStack (spacing: spaceBetweenBoxes){
                                      
                                      otpText(text: viewModel.otp1)
                                      otpText(text: viewModel.otp2)
                                      otpText(text: viewModel.otp3)
                                      otpText(text: viewModel.otp4)
                                   
                                  }
                                  
                                  
                                  TextField("", text: $viewModel.otpField)
                                  .frame(width: isFocused ? 0 : textFieldOriginalWidth, height: textBoxHeight)
                                  .disabled(viewModel.isTextFieldDisabled)
                                  .textContentType(.oneTimeCode)
                                  .foregroundColor(.clear)
                                  .accentColor(.clear)
                                  .background(Color.clear)
                                  .keyboardType(.numberPad)
                              }
       
            
            Text(username)
                .foregroundColor(emailFieldIsFocused ? .red : .blue)
            
            
            
         
         
            
    

            Text("Entered a wrong number?")
                .foregroundColor(.white)
                .padding([.vertical], 12)
                .fontWeight(.semibold)
            
            
            
            
            NavigationLink(destination: ChannelSelectionView()) {
      
                
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
                     
                        .foregroundColor(.white).onTapGesture {
                            let verificationID = UserDefaults.standard.string(forKey: "authVerificationID")
//                            let credential = PhoneAuthProvider.provider().credential(withVerificationID: verificationID, verificationCode: "000000")
                            
           
                        }
                        
                }
                        
                    }
                   // If you have this
                    
         
                    .padding([.horizontal], 56)
            
            Spacer()
                
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

