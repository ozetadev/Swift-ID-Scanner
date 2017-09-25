//
//  LicenseScanner.swift
//  idscanner
//
//  Created by Philip Bernstein on 9/25/17.
//  Copyright © 2017 Philip Bernstein. All rights reserved.
//

import UIKit

class LicenseScanner {
    class func parsePDF417Data(_ data:Data)->License? {
        return nil
    }
}

struct License {
    let isValid:Bool
    let state:State
    var firstName:String?
    var familyName:String?
    var middleName:String?
    var streetAddress:String?
    var addressLocale:String?
    var birthdate:Date?
    var isOver21 = false
}
