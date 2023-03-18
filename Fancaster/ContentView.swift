    //
    //  ContentView.swift
    //  Fancaster
    //
    //  Created by Ankit Mhatre on 1/8/23.
    //

import SwiftUI
import UIKit

import FirebaseAuth


struct ContentView: View {
    
    @State private var userLoggedIn:Bool = false
    
    
//    let backgroundGradient = LinearGradient(
//        colors: [Color(uiColor: UIColor(red: 5, green: 191, blue: 247, alpha: 1)), Color(uiColor: UIColor(red: 66, green: 25, blue: 79, alpha: 1))],
//        startPoint: .top, endPoint: .bottom)
//
    

    var body: some View {
        let handle = Auth.auth().addStateDidChangeListener { auth, user in
            
            print("addStateChangeLKister")
            print(user)
            
            if user != nil   {
                userLoggedIn = true
            }else{
                userLoggedIn = false
            }
        }
        
    
        
            
            if self.userLoggedIn {
                    HomeView()
            } else {
                LoginView()
                 }
                
            
        
         
    }
}
    struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
             ContentView()
    }
    }


struct startRecordingStoryboardView: UIViewControllerRepresentable{
    
    
    func makeUIViewController(context content: Context) ->  UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(identifier  : "Record")
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
    }
    
}


extension View {
    func onViewDidLoad(perform action: (() -> Void)? = nil) -> some View {
        self.modifier(ViewDidLoadModifier(action: action))
    }
}

struct ViewDidLoadModifier: ViewModifier {
    @State private var viewDidLoad = false
    let action: (() -> Void)?
    
    func body(content: Content) -> some View {
        content
            .onAppear {
                if viewDidLoad == false {
                    viewDidLoad = true
                    action?()
                }
            }
    }
}
