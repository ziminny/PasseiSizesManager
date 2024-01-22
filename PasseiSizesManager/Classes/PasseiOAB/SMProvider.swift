//
//  File.swift
//
//
//  Created by Vagner Oliveira on 15/06/23.
//

/// Enumeração que representa os diferentes tipos de dispositivos.
public enum SMDiveceType {
    
    case small
    case normal
    case ipad
    
}

/// Protocolo que fornece informações geométricas com base no tipo de dispositivo.
public protocol SMGeometryProvider {
    
    /// O preenchimento horizontal padrão.
    static var horizontalPadding: Double { get }
    
    /// A altura padrão dos botões.
    static var buttonhHeight: Double { get }
    
    /// O raio de curvatura padrão dos botões.
    static var buttonCornerRadius: Double { get }
    
    /// O tipo de dispositivo atual.
    static var deviceType: SMDiveceType { get }
    
}

