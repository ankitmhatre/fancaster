//
//  ChannelSelectionView.swift
//  Fancaster
//
//  Created by Ankit Mhatre on 1/14/23.
//

import SwiftUI


struct ChannelSelectionView: View {

    
    var body: some View {
        
        
        
        
        
        
        ZStack{
            VStack(alignment: .leading){
                
                HStack{
                    ZStack{
                        Circle()
                            .fill(Color("violet"))
                        
                            .frame(width: 80, height:80,  alignment: .topLeading)
                        Image("arrow_back")
                            .resizable()
                            .frame(width: 30, height :40,  alignment: .leading)
                    }
                    Text("Cancel")
                        .foregroundColor(Color("violet"))
                        .font(.system(size: 18))
                        .fontWeight(.black)
                    
                }
                
                Text("Select where to broadcast")
                    .foregroundColor(Color("violet"))
                    .font(.system(size: 18))
                    .fontWeight(.black)
                
                
                
                
                
                
                
                List(checkListData){ item in
                    
                    CheckView(isChecked: item.isChecked, title: item.title)
                }
                .font(.title)
                
                
                .background(.clear)
                
                
                
                
                
                
                
                
            }
            
            
            .padding([.horizontal], 20)
            
            ZStack(alignment: .top){
                
                
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color("violet"), Color("violet"), Color("magenta")]), startPoint: .bottom, endPoint: .top)
                    )
                
                    .frame(width: 500, height: 500)
                    .offset(y: 500)
                
                VStack{
              
                    
             
                    
                    
                    ZStack{
                        Circle()
                            .fill(
                                Color("violet")
                            )
                        
                            .frame(width: 120, height: 120)
                        
                        
                        Image("play_button")
                            .resizable()
                            .frame(width: 60, height: 80)
                        
                        
                    }
                    .offset(y:-50)
                    Text("Go Live !")
                        .font(.system(size: 36))
                        .foregroundColor(.white)
                        .fontWeight(.black)
                    
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
