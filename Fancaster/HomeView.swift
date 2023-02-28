//
//  HomeView.swift
//  Fancaster
//
//  Created by Ankit Mhatre on 1/14/23.
//

import SwiftUI

struct HomeView: View {
    
    let backgroundGradient =  LinearGradient(gradient: Gradient(colors: [Color("blue_header_bg_light"), Color("blue_header_bg_dark")]), startPoint: .bottomTrailing, endPoint: .topLeading)
    
    
    var body: some View {
        ZStack{
            Image("header_home")
                    .resizable()
                   
                    .scaledToFill()
                
                    .ignoresSafeArea()
                
     
            
            VStack(alignment: .leading){

              
               
                    ZStack{
                        Circle()
                            .fill(.black)
                            .opacity(0.4)
                            .frame(width: 80, height:80,  alignment: .topLeading)
                        NavigationLink(destination : MenuView()){
                            Image("hamburger_icon")
                                .resizable()
                                .frame(width: 40, height :40,  alignment: .leading)
                        }
                        .navigationBarBackButtonHidden(true)
                        
                    }
                    .offset(x:220)
                
            
               ZStack{
                   
                  
                   Circle()
                       .fill(
                        backgroundGradient
                       )
                                   .offset(y: 500)
                                   .frame(width: 800, height: 700)
                                   
                                   
                                
                               
                   VStack{
                    Spacer()
             
               
                 Image("fancaster_white_text")
                   .resizable()
                     .frame(width:300, height: 50, alignment: .bottom)
                     .offset(x:0, y:-50)
                   
                   }
               }
            }
            
            
            
            HStack{
                NavigationLink(destination:ChannelSelectionView() ){
                    
                    VStack{
                        
                        ZStack{
                            
                        
                        
                            //   storyboardview().edgesIgnoringSafeArea(.all)
                        
                                
                                Image("blue_circle")
                                    .resizable()
                                    .frame(width: 120, height: 120)
                            
                            Image("camcorder")
                                .resizable()
                                .frame(width: 70, height: 60)
                            
                        }
                        Text("Go Live")
                            .foregroundColor(.white)
                    }
                    
                    
                    
                    
                }
                .navigationBarBackButtonHidden(true)
                VStack{
                    ZStack{
                        
                        Image("blue_circle")
                            .resizable()
                            .frame(width: 120, height: 120)
                        
                        //   storyboardview().edgesIgnoringSafeArea(.all)
                        Image("")
                            .resizable()
                            .frame(width: 70, height: 60)
                        
                        
                    }
                    Text("Record to phone")
                        .foregroundColor(.white)
                }
            }
            
          
            .offset(y:190)
            
            

        }
  
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
