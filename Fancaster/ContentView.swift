    //
    //  ContentView.swift
    //  Fancaster
    //
    //  Created by Ankit Mhatre on 1/8/23.
    //

import SwiftUI
import UIKit

struct ContentView: View {
    
    
//    let backgroundGradient = LinearGradient(
//        colors: [Color(uiColor: UIColor(red: 5, green: 191, blue: 247, alpha: 1)), Color(uiColor: UIColor(red: 66, green: 25, blue: 79, alpha: 1))],
//        startPoint: .top, endPoint: .bottom)
//
    
    
    var body: some View {
   
          NavigationView {
              LoginView()

          }
         
         
      }
}
    struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
             ContentView()
    }
    }


struct storyboardview: UIViewControllerRepresentable{
    
    
    func makeUIViewController(context content: Context) ->  UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(identifier  : "Home")
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
    }
    
}
