//
//  WaitingView.swift
//  Fancaster
//
//  Created by Ankit Mhatre on 1/14/23.
//

import SwiftUI

struct WaitingView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("magenta"), Color("gradient_blue")]), startPoint: .bottom, endPoint: .top)
Circle()
                .fill(Color("violet"))
                .offset(x: -700)
                .frame(width: 1500, height: 1500)
            
                
  
            VStack {
                ZStack{
                    Image("waiting_header")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                
                    
                    Image("loading_arrow")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                        .offset(x:20, y: -15)
                }
            }
            
        }
        .ignoresSafeArea()
    }
}

struct WaitingView_Previews: PreviewProvider {
    static var previews: some View {
        WaitingView()
    }
}
