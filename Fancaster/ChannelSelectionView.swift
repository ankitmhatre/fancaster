//
//  ChannelSelectionView.swift
//  Fancaster
//
//  Created by Ankit Mhatre on 1/14/23.
//

import SwiftUI


struct ChannelSelectionView: View {
    @Environment(\.presentationMode) var presentationMode
    
    
    @State var showWaitingScreenPage = false
    
    
    
    let backgroundGradient =  LinearGradient(gradient: Gradient(colors: [Color("blue_header_bg_light"), Color("blue_header_bg_dark")]), startPoint: .bottomTrailing, endPoint: .topLeading)
    
    
    

    @State var twitterCheck = false
    @State var facebookCheck = false
    @State var instagramCheck = false
    @State var tiktokCheck = false
    @State var snapchatCheck = false
    @State var youtubeCheck = false
    @State var localCheck = false
    
    @State var twitterLabel = "Twitter"
    @State var facebookLabel = "Facebook"
    @State var instagramLabel = "Instagram"
    @State var tiktokLabel = "Tik Tok"
    @State var snapchatLabel = "Snapchat"
    @State var youtubeLabel = "Youtube"
    @State var localLabel = "Record Locally"
    
    
    
    var body: some View {
        
        
        
        
        
        ZStack{
            
            

            VStack(alignment: .leading){
                
         //       NavigationLink{ destination :
                    
                HStack(){
                     ZStack{
                         Circle()
                             .fill(.black)
                         
                             .frame(width: 50, height:50)
                         Button(action:{ self.presentationMode.wrappedValue.dismiss() }){
                             Image("arrow_back")
                                 .resizable()
                                 .frame(width: 15, height :20,  alignment: .leading)
                         }
                     }
                    Text("Cancel")
                        .foregroundColor(Color("violet"))
                        .font(.system(size: 18))
                        .fontWeight(.black)
                    Spacer()
                }
                //}
                
              
                Text("Select where to broadcast")
                    .foregroundColor(Color("violet"))
                    .font(.system(size: 18))
                    .fontWeight(.black)
                Spacer()
                       .frame(height: 50)
                
                VStack(alignment: .leading){
                    
            
                CheckBoxView(checked: self.$twitterCheck, title: self.$twitterLabel)
                CheckBoxView(checked: self.$facebookCheck, title: self.$facebookLabel)
                
                CheckBoxView(checked: self.$instagramCheck, title: self.$instagramLabel)
                
                CheckBoxView(checked: self.$tiktokCheck, title: self.$tiktokLabel)
                
                CheckBoxView(checked: self.$snapchatCheck, title: self.$snapchatLabel)
                
                CheckBoxView(checked: self.$youtubeCheck, title: self.$youtubeLabel)
                CheckBoxView(checked: self.$localCheck, title: self.$localLabel)
                
                
                }
                
                 Spacer()
                
                
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
                    
                    
                    
                    
                    
                    NavigationLink(  destination: WaitingForConnection().navigationBarBackButtonHidden(true), isActive  : self.$showWaitingScreenPage){
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
