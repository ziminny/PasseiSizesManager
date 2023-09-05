//
//  File.swift
//  
//
//  Created by Vagner Oliveira on 15/06/23.
//

import Foundation

public enum SMDiveceType {
    
    case small
    case normal
    case ipad
 
    
}


public protocol SMGeometryProvider {
    
    static var horizontalPadding:Double {
        get
    }
    
    static var buttonhHeight:Double {
        get
    }
    
    static var buttonCornerRadius:Double {
        get
    }
    
    static var deviceType:SMDiveceType {
        get
    }

    
}
