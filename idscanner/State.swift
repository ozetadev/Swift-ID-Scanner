//
//  State.swift
//  idscanner
//
//  Created by Philip Bernstein on 9/25/17.
//  Copyright © 2017 Philip Bernstein. All rights reserved.
//

import Foundation

struct State {
    var codeDictionary:[String:Any]?
    var stateCode:String?
    
    init(_ json:[AnyHashable:Any]) {
        guard let dictionary = json["dictionary"] as? [String:Any], let code = json["code"] as? String else {
            return
        }
        
        stateCode = code
        codeDictionary = dictionary
    }
}
