//
//  SignUPViewModel.swift
//  Fancaster
//
//  Created by Ankit Mhatre on 3/2/23.
//

import Foundation
import FirebaseAuth



class SignUpViewModel: ObservableObject {
    
    @Published var otpField = "" {
        didSet {
            guard otpField.count <= 6,
                  otpField.last?.isNumber ?? true else {
                otpField = oldValue
                return
            }
        }
    }
    
    
    
    
    func singup() {
       // Auth.auth().createUser(withEmail: email, password: String)
    
    }
    
    
    @Published  var f_name: String = ""
    @Published  var l_name: String = ""
    @Published  var email: String = ""
    @Published  var phoneNumber: String = ""
    
    @Published  var countryCode = "+1"

    @Published var isTextFieldDisabled = false

    
    @Published var showResendText = false

}
