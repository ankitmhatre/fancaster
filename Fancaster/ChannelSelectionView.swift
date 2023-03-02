//
//  ChannelSelectionView.swift
//  Fancaster
//
//  Created by Ankit Mhatre on 1/14/23.
//

import SwiftUI


struct ChannelSelectionView: View {
    let backgroundGradient =  LinearGradient(gradient: Gradient(colors: [Color("blue_header_bg_light"), Color("blue_header_bg_dark")]), startPoint: .bottomTrailing, endPoint: .topLeading)
    
    @State private var isOn = false
    
    var body: some View {
        
        
        
        
        
        ZStack{
            
            

            VStack(alignment: .leading){
                
         //       NavigationLink{ destination :
                    
                 HStack{
                    ZStack{
                        Circle()
                            .fill(.black)
                        
                            .frame(width: 80, height:80,  alignment: .topLeading)
                        Image("arrow_back")
                            .resizable()
                            .frame(width: 25, height :40,  alignment: .leading)
                    }
                    Text("Cancel")
                        .foregroundColor(Color("violet"))
                        .font(.system(size: 18))
                        .fontWeight(.black)
                    
                }
                //}
                
                
                Text("Select where to broadcast")
                    .foregroundColor(Color("violet"))
                    .font(.system(size: 18))
                    .fontWeight(.black)
                
                
                
                List(checkListData){item in
                    Toggle(item.title, isOn : $isOn)
                          

                }
                
                
                
                
                
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
                    .offset(y: 500)
                
                VStack{
                    
                    
                    
                    
                    
                    NavigationLink(  destination: WaitingForConnection() ){
                        ZStack{
                            
                            Image("yellow_circle")
                                .resizable()
                                .frame(width: 120, height: 120)
                            
                                
                            
                            
                            
                            
                            
                            //   storyboardview().edgesIgnoringSafeArea(.all)
                            Image("arrow_forward")
                                .resizable()
                                .frame(width: 50, height: 75)
                            
                            
                        }
                        .offset(y:-50)
                    }
                                 
                    Text("Go Live !")
                        .font(.system(size: 36))
                        .foregroundColor(.white)
                        .fontWeight(.black)
                        .offset(y:-50)
                }
                .offset(y: 500)
                
                
            }
            
            .padding([.horizontal], -40)
        }
        
    }
    
}



struct ChannelSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        ChannelSelectionView()
    }
}
