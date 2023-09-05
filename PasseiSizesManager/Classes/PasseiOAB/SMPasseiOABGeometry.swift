//
//  File.swift
//  
//
//  Created by Vagner Oliveira on 15/06/23.
//

import Foundation
import UIKit


public class SMPasseiOABGeometry:SMGeometryProvider {
    
    public static var deviceType: SMDiveceType {
        
        let height = UIScreen.main.bounds.height
        let device = UIDevice.current.userInterfaceIdiom
        
        switch device {
        case .pad:
            return .ipad
        default:
            switch height {
            case 0...SMPasseiOABGlobal.cellPhoneMaxLimit:
                return .small
            default:
                return .normal
            }
        }
    }
    
    public static var horizontalPadding:Double {
        deviceType == .ipad ? ((UIScreen.main.bounds.size.width / 0.8) / SMPasseiOABGlobal.sideSpaceRatio) :
        UIScreen.main.bounds.size.width / SMPasseiOABGlobal.sideSpaceRatio
    }
    
    public static var buttonhHeight:Double {
        (
            deviceType == .small ? 40 :
            deviceType == .normal  ? 45.0 : 60
        ) * SMPasseiOABGlobal.buttonHeigtRatio
    }
    
    public static var verticalPadding:Double {
        deviceType == .ipad ? ((UIScreen.main.bounds.size.height / 0.9) / SMPasseiOABGlobal.heightSpaceRatio) :
        UIScreen.main.bounds.size.height / SMPasseiOABGlobal.heightSpaceRatio
    }
    
    public static var buttonCornerRadius:Double {
        8.0 * SMPasseiOABGlobal.buttonCurveProportion
    }
    

    
}
