//
//  File.swift
//  
//
//  Created by Vagner Oliveira on 15/06/23.
//

import Foundation
import UIKit

public class SMPasseiOABGlobal {
    
    /// Default =  35
    ///
    /// - Exemplo:
    /// ```
    ///     sideSpacingRatio:Double = 35
    /// ```
    public static var sideSpacingRatio:Double = 15
    
    /// Default =  35
    ///
    /// - Exemplo:
    /// ```
    ///     heightSpaceRatio = 35
    /// ```
    public static var heightSpaceRatio:Double = 15
    
    /// Default = 1
    ///
    /// - Exemplo:
    /// ```
    ///     buttonHeigthRatio:Double = 1
    /// ```
    public static var buttonHeigthRatio:Double = 1
    
    
    /// Default = 1
    ///
    /// - Exemplo:
    /// ```
    ///     buttonCurveProportion:Double = 1
    /// ```
    public static var buttonCurveProportion:Double = 1
    
    /// Default = 1
    ///
    /// - Exemplo:
    /// ```
    ///     cellPhoneMaxLimit:Double = 737
    /// ```
    public static var cellPhoneMaxLimit:Double = 737
    
    
    /// Retorna a  classe de forma estatica
    public static var geometry:SMPasseiOABGeometry.Type { SMPasseiOABGeometry.self }
    
}

 

 
