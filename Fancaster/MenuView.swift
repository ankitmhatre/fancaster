//
//  MenuView.swift
//  Fancaster
//
//  Created by Ankit Mhatre on 2/28/23.
//

import SwiftUI
import FirebaseAuth

struct MenuView: View {
    
    
    
    
    
 
    
    let backgroundGradient =  LinearGradient(gradient: Gradient(colors: [Color("blue_header_bg_light"), Color("blue_header_bg_dark")]), startPoint: .bottomTrailing, endPoint: .topLeading)
    
    
    var body: some View {
        ZStack{
            Image("blue_header")
                    .resizable()
                   
                    .scaledToFill()
                
                    .ignoresSafeArea()
                
          
            VStack(alignment: .leading){
                    
                
                HStack{
ZStack{
                                             Circle()
                                                 .fill(Color("blue_header_bg_dark"))
                                                
                                                 .frame(width: 80, height:80,  alignment: .topLeading)
                                             Image("close_icon")
                                                 .resizable()
                                                 .frame(width: 45, height :40,  alignment: .leading)
                    
                                         }
                    
                    
                                  
                    
              
                }
                    HStack{
ZStack{
                                                 Circle()
                                                     .fill(Color("blue_header_bg_dark"))
                                                    
                                                     .frame(width: 80, height:80,  alignment: .topLeading)
                                                 Image("profile_icon")
                                                     .resizable()
                                                     .frame(width: 45, height :35,  alignment: .leading)
                        
                                             }
                        
                        
                                      
                        
                        Text("User Profile")
                            .bold()
                            .foregroundColor(.white)
                            .font(.system(size:36))
                    }
                    
                    
                    HStack{
ZStack{
                                                 Circle()
                                                     .fill(Color("blue_header_bg_dark"))
                                                    
                                                     .frame(width: 80, height:80,  alignment: .topLeading)
                                                 Image("settings_icon")
                                                     .resizable()
                                                     .frame(width: 45, height :40,  alignment: .leading)
                        
                                             }
                        
                        
                                      
                        
                        Text("App Settings")
                            .bold()
                            .foregroundColor(.white)
                            .font(.system(size:36))
                    }
                    
                    HStack{
ZStack{
                                                 Circle()
                                                     .fill(Color("blue_header_bg_dark"))
                                                    
                                                     .frame(width: 80, height:80,  alignment: .topLeading)
                                                 Image("help_icon")
                                                     .resizable()
                                                     .frame(width: 5, height :35,  alignment: .leading)
                        
                                             }
                        
                        
                                      
                        
                        Text("Information/Help")
                            .bold()
                            .foregroundColor(.white)
                            .font(.system(size:36))
                    }
                    
                    
                    
                    HStack{
ZStack{
                                                 Circle()
                                                     .fill(Color("blue_header_bg_dark"))
                                                    
                                                     .frame(width: 80, height:80,  alignment: .topLeading)
                                                 Image("contests_icon")
                                                     .resizable()
                                                     .frame(width: 35, height :45,  alignment: .leading)
                        
                                             }
                        
                        
                                      
                        
                        Text("Contests")
                            .bold()
                            .foregroundColor(.white)
                            .font(.system(size:36))
                    }
                    
               
                NavigationLink(destination :LoginView()){
                    
                    Button(action: {
                        print("SignoutUser :Clicked")
                        try! Auth.auth().signOut()
                                       
                                       UserDefaults.standard.set(false, forKey: "status")
                                       
                                       NotificationCenter.default.post(name: NSNotification.Name("statusChange"), object: nil)
                    }){
                        HStack{
        ZStack{
                                                     Circle()
                                                         .fill(Color("blue_header_bg_dark"))
                                                        
                                                         .frame(width: 80, height:80,  alignment: .topLeading)
                                                     Image(systemName: "rectangle.portrait.and.arrow.forward")

                                                         .resizable()
                                                         .frame(width: 35, height :45,  alignment: .leading)
                                                         .foregroundColor(.white)
                            
                                                 }
                            
                            
                                          
                            
                            Text("Logout")
                                .bold()
                                .foregroundColor(.white)
                                .font(.system(size:36))
                        }
                    }
                }
                    
                    
                    
                    
                    //
                    //
                    //
                    //                Image("close_icon")
                    //                    .resizable()
                    //                    .frame(width: 40, height :40,  alignment: .leading)
                    //
                    //                ZStack{
                    //                         Circle()
                    //                             .fill(.black)
                    //                             .opacity(0.4)
                    //                             .frame(width: 80, height:80,  alignment: .topLeading)
                    //                         Image("close_icon")
                    //                             .resizable()
                    //                             .frame(width: 40, height :40,  alignment: .leading)
                    //
                    //                     }
                    
                    //                HStack{
                    //
                    //
                    //                ZStack{
                    //                         Circle()
                    //                             .fill(.black)
                    //                             .opacity(0.4)
                    //                             .frame(width: 80, height:80,  alignment: .topLeading)
                    //                         Image("close_icon")
                    //                             .resizable()
                    //                             .frame(width: 40, height :40,  alignment: .leading)
                    //
                    //
                    //                     }
                    //
                    //                }
                    
                }
               
            
            
            .frame(
                maxWidth: .infinity,
                      maxHeight: .infinity
                ,alignment: .top
                  )
           
      
            ZStack{
               Circle()
                    .fill( backgroundGradient )
                                .offset(y: 600)
                                .frame(width: 800, height: 700)
                     VStack{
                 Spacer()
          
            
              Image("fancaster_white_text")
                .resizable()
                  .frame(width:300, height: 50, alignment: .bottom)
                  .offset(x:0, y:-50)
                
                         
                         
                }
                NavigationLink(destination:ChannelSelectionView() ){
                    Image("login_header")
                        .resizable()
                        .frame(width: 120, height: 120)
                    
                    //   storyboardview().edgesIgnoringSafeArea(.all)
                } .offset(y:250)
            }

        }
  
    
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
