//
//  File.swift
//  
//
//  Created by Vagner Oliveira on 15/06/23.
//

import Foundation
import UIKit

/// Implementação da geometria específica para o aplicativo SMPasseiOAB.
public class SMPasseiOABGeometry: SMGeometryProvider {
    
    /// Retorna o tipo de dispositivo com base na altura da tela e na interface do usuário.
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
    
    /// Retorna o preenchimento horizontal com base no tipo de dispositivo.
    public static var horizontalPadding: Double {
        deviceType == .ipad ? ((UIScreen.main.bounds.size.width / 0.8) / SMPasseiOABGlobal.sideSpacingRatio) :
        UIScreen.main.bounds.size.width / SMPasseiOABGlobal.sideSpacingRatio
    }
    
    /// Retorna a altura padrão dos botões com base no tipo de dispositivo.
    public static var buttonhHeight: Double {
        (
            deviceType == .small ? 40 :
            deviceType == .normal  ? 45.0 : 60
        ) * SMPasseiOABGlobal.buttonHeigthRatio
    }
    
    /// Retorna o preenchimento vertical com base no tipo de dispositivo.
    public static var verticalPadding: Double {
        deviceType == .ipad ? ((UIScreen.main.bounds.size.height / 0.9) / SMPasseiOABGlobal.heightSpaceRatio) :
        UIScreen.main.bounds.size.height / SMPasseiOABGlobal.heightSpaceRatio
    }
    
    /// Retorna o raio de curvatura padrão dos botões.
    public static var buttonCornerRadius: Double {
        8.0 * SMPasseiOABGlobal.buttonCurveProportion
    }
}

