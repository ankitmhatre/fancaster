//
//  SplashViewController.swift
//  Fancaster
//
//  Created by Ankit Mhatre on 2/28/23.
//

import Foundation
import UIKit
import FirebaseAuth

class SplashViewController : UIViewController{
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Auth.auth().currentUser?.uid != nil {

            print("Yesssssssssssssssssssssss, user logged in")
            print(Auth.auth().currentUser?.uid)

            }else{
             //user is not logged in
                print("no user logged in")
            }
        
        
        
        
        
    }
    
}
