//
//  WaitingForConnection.swift
//  Fancaster
//
//  Created by Ankit Mhatre on 2/27/23.
//

import Foundation
import SwiftUI




struct WaitingForConnection: View {
    
    
    
    @Environment(\.presentationMode) var presentationMode
   
    let backgroundGradient =  LinearGradient(gradient: Gradient(colors: [Color("blue_header_bg_light"), Color("blue_header_bg_dark")]), startPoint: .top, endPoint: .bottom)
    
    @State private var isOn = false
    
    var body: some View {
        
        
        
        
        
        ZStack{
           
                
           
            
            Image("header_home")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    
                
           

            VStack(alignment: .leading){
                
                HStack{
                    ZStack{
                        Circle()
                            .fill(.black)
                            .opacity(0.2)
                            .frame(width: 60, height:60,  alignment: .topLeading)
                        Button(action:{ self.presentationMode.wrappedValue.dismiss() }){
                            Image("arrow_back")
                                .resizable()
                            
                                .frame(width: 25, height :40,  alignment: .leading)
                        }
                    }
                 
          
                    
                }
                
                
                Text("Starting in x seconds click to start ")
                    .foregroundColor(Color("violet"))
                    .font(.system(size: 18))
                    .fontWeight(.black)
                Spacer()
                
//
//                List(checkListData){item in
//                    Toggle(item.title, isOn : $isOn)
//
//
//                }
//
                
                
                
                
//                List(checkListData){ item in
//
//                    CheckV(isChecked: item.isChecked, title: item.title)
//
//                }
//                .font(.title)
                
                
                
                
                
                
                
                
                
            }
            
            
            .padding([.horizontal], 20)
            
            ZStack(alignment: .top){
                
                
                Circle()
                    .fill(
                        backgroundGradient
                    )
                
                    .frame(width: 500, height: 500)
                    .offset(y: 450)
                
                VStack{
                    
                    
                    
                    
                    
        
                     
                        ZStack{
                            
                            NavigationLink(  destination:
                                                startRecordingStoryboardView().edgesIgnoringSafeArea(.all)){
                            Image("blue_circle")
                                .resizable()
                                .frame(width: 170, height: 170)
                            }
                            //   storyboardview().edgesIgnoringSafeArea(.all)
                            
                            NavigationLink(  destination:
                                                startRecordingStoryboardView().edgesIgnoringSafeArea(.all)){
                                Image("camera_action_plate")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                
                            }
                       
                       
                    } .offset(y:-270)
                    Text("Your broadcast will start shortly...")
                        .font(.system(size: 24))
                        .frame(width: 250, height: 220)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .fontWeight(.black)
                        .offset(y:-350)
                }
                .offset(y: 600)
                
                
            }
            
            
        }
        
    }
    
}



struct WaitingForConnection_Previews: PreviewProvider {
    static var previews: some View {
        WaitingForConnection()
    }
}
