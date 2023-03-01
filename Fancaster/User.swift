//
//  User.swift
//  Fancaster
//
//  Created by Ankit Mhatre on 2/28/23.
//

import Foundation


class User {
    var uid: String
   // var email: String?
    var displayName: String?

    init(uid: String, displayName: String?
         //,email: String?
    ) {
        self.uid = uid
      //  self.email = email
        self.displayName = displayName
    }

}
