//
//  CheckListData.swift
//  Fancaster
//
//  Created by Ankit Mhatre on 1/14/23.
//

import Foundation

struct CheckListItem :Identifiable{
    var id:Int
    var isChecked: Bool = false
    var title: String
 }
