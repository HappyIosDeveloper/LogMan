//
//  LogMan.swift
//  LogMan
//
//  Created by Alfredo Uzumaki on 5/23/19.
//  Copyright © 2019 Alfredo Uzumaki. All rights reserved.
//

import UIKit

class LogMan {
    
    static var allowPrint = true
    private init() {}
}

public func prt(_ printAnyThing: Any, _ clas:Any? = nil) {
    
    if LogMan.allowPrint {
        if let c = clas {
            if String(describing: c).components(separatedBy: ".").count > 1 {
                if let className = String(describing: c).components(separatedBy: ".")[1].components(separatedBy: ":").first {
                    print(className + " =>", printAnyThing)
                } else {
                    print("LogMan Unknown class ", printAnyThing)
                }
            } else {
                print("LogMan Unknown class ", printAnyThing)
            }
        } else {
            print(printAnyThing)
        }
    }
}

public func print(_ items: Any..., separator: String = " ", terminator: String = "\n") {
    if LogMan.allowPrint {
        let output = items.map { "\($0)" }.joined(separator: separator)
        Swift.print(output, terminator: terminator)
    }
}



