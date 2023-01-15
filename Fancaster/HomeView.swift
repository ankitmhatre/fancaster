//
//  HomeView.swift
//  Fancaster
//
//  Created by Ankit Mhatre on 1/14/23.
//

import SwiftUI

struct HomeView: View {
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
                        Image("hamburger_icon")
                            .resizable()
                            .frame(width: 40, height :40,  alignment: .leading)


                    }
               .offset(x:220)
             
            
               ZStack{
                   
                  
                   Circle()
                       .fill(
                           LinearGradient(gradient: Gradient(colors: [Color("violet"), Color("violet"), Color("magenta")]), startPoint: .bottom, endPoint: .top)
                       )
                                   .offset(y: 500)
                                   .frame(width: 800, height: 700)
                                   
                                   
                                
                               
                   VStack{
                    Spacer()
                       Text("Start Broadcasting !")
                           .font(.system(size: 24))
                           .foregroundColor(.white)
                           .fontWeight(.black)
                           .offset(x:0, y:20)
               
                 Image("fancaster_logo")
                   .resizable()
                     .frame(width:300, height: 120, alignment: .bottom)
                     .offset(x:0, y:0)
                   
                   }
               }
            }
            
            
            
            Circle()
                .fill(
                    Color("violet")
                )
                            .offset(y: 200)
                            .frame(width: 120, height: 120)
                            
                            
            Image("camcorder")
                .resizable()
                .offset(y: 195)
                .frame(width: 80, height: 80)
        }
  
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
