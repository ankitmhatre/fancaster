//
//  TransitionScreenView.swift
//  Fancaster
//
//  Created by Ankit Mhatre on 2/21/23.
//

import Foundation
import UIKit
import SwiftUI



struct TransitionScreenView: View {
    
    @StateObject var viewModel = OtpViewModel()
    @State var isFocused = false
    

    
    
    @State private var phoneNumber = ""
    @State private var username: String = ""
    @FocusState private var emailFieldIsFocused: Bool
    
    let backgroundGradient =  LinearGradient(gradient: Gradient(colors: [Color("blue_header_bg_light"), Color("blue_header_bg_dark")]), startPoint: .topTrailing, endPoint: .bottomLeading)
    
    
    var body: some View {
        
        ZStack{
            backgroundGradient
            VStack{
                Image("header_transition_board")
                    .imageScale(.large)
                
                    .padding(EdgeInsets.init(top: 0, leading: -600, bottom: 0, trailing: 0))
            }
            Image("header_transition_board")
                .imageScale(.large)
            
                .padding(EdgeInsets.init(top: 0, leading: -600, bottom: 0, trailing: 0))
            
            Image("rotation_icon")
                .imageScale(.large)
                .padding([.horizontal], 100)
            NavigationLink(destination:     HomeView()) {
                
                Image("transition_logo_icon")
                    .imageScale(.large)
                
            }
       
            
            
            
        }
        
        
        
        .ignoresSafeArea()
    }
    
 
}



struct TransitionScreenView_Previews: PreviewProvider {
static var previews: some View {
    TransitionScreenView()
}
}
