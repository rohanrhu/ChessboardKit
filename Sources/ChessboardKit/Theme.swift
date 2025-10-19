//
// ChessboardKit is a SwiftUI library for rendering chessboards and pieces.
//
// See the GitHub repo for documentation:
// https://github.com/rohanrhu/ChessboardKit
//
// Copyright (C) 2025, Oğuzhan Eroğlu (https://meowingcat.io)
// Licensed under the MIT License.
// You may obtain a copy of the License at: https://opensource.org/licenses/MIT
// See the LICENSE file for more information.
//

import Foundation
import SwiftUI

public protocol ChessboardColorScheme: Sendable {
    var light: Color { get }
    var dark: Color { get }
    var label: Color { get }
    var selected: Color { get }
    var hinted: Color { get }
    var legalMove: Color { get }
}

public struct ChessboardColorSchemes {
    public struct Light: ChessboardColorScheme {
        public var light: Color = Color(red: 0.95, green: 0.95, blue: 0.95)
        public var dark: Color = Color(red: 0.85, green: 0.85, blue: 0.85)
        
        public var label: Color = Color(red: 0.20, green: 0.20, blue: 0.20)
        
        public var selected: Color = Color(red: 0.20, green: 0.80, blue: 0.20)
        public var hinted: Color = Color(red: 0.80, green: 0.20, blue: 0.20)
        public var legalMove: Color = Color(red: 0.30, green: 0.30, blue: 0.30, opacity: 0.4)
        
        public init() {}
    }
    
    public struct Dark: ChessboardColorScheme {
        public var light: Color = Color(red: 0.20, green: 0.20, blue: 0.20)
        public var dark: Color = Color(red: 0.10, green: 0.10, blue: 0.10)
        
        public var label: Color = Color(red: 0.80, green: 0.80, blue: 0.80)
        
        public var selected: Color = Color(red: 0.20, green: 0.80, blue: 0.20)
        public var hinted: Color = Color(red: 0.80, green: 0.20, blue: 0.20)
        public var legalMove: Color = Color(red: 0.70, green: 0.70, blue: 0.70, opacity: 0.4)
        
        public init() {}
    }
    
    public struct Orange: ChessboardColorScheme {
        public var light: Color = Color(red: 1.0, green: 0.85, blue: 0.60)
        public var dark: Color = Color(red: 1.0, green: 0.65, blue: 0.25)
        public var label: Color = Color(red: 0.20, green: 0.20, blue: 0.20)
        
        public var selected: Color = Color(red: 0.20, green: 0.80, blue: 0.20)
        public var hinted: Color = Color(red: 0.80, green: 0.20, blue: 0.20)
        public var legalMove: Color = Color(red: 0.30, green: 0.30, blue: 0.30, opacity: 0.4)
        
        public init() {}
    }
    
    public struct Blue: ChessboardColorScheme {
        public var light: Color = Color(red: 0.85, green: 0.95, blue: 1.0)
        public var dark: Color = Color(red: 0.55, green: 0.75, blue: 1.0)
        
        public var label: Color = Color(red: 0.20, green: 0.20, blue: 0.20)
        
        public var selected: Color = Color(red: 0.20, green: 0.80, blue: 0.20)
        public var hinted: Color = Color(red: 0.80, green: 0.20, blue: 0.20)
        public var legalMove: Color = Color(red: 0.30, green: 0.30, blue: 0.30, opacity: 0.4)
        
        public init() {}
    }
    
    public struct Green: ChessboardColorScheme {
        public var light: Color = Color(red: 0.85, green: 1.0, blue: 0.85)
        public var dark: Color = Color(red: 0.55, green: 1.0, blue: 0.55)
        
        public var label: Color = Color(red: 0.20, green: 0.20, blue: 0.20)
        
        public var selected: Color = Color(red: 0.20, green: 0.80, blue: 0.20)
        public var hinted: Color = Color(red: 0.80, green: 0.20, blue: 0.20)
        public var legalMove: Color = Color(red: 0.30, green: 0.30, blue: 0.30, opacity: 0.4)
        
        public init() {}
    }
    
    public struct Red: ChessboardColorScheme {
        public var light: Color = Color(red: 1.0, green: 0.85, blue: 0.85)
        public var dark: Color = Color(red: 1.0, green: 0.55, blue: 0.55)
        
        public var label: Color = Color(red: 0.20, green: 0.20, blue: 0.20)
        
        public var selected: Color = Color(red: 0.20, green: 0.80, blue: 0.20)
        public var hinted: Color = Color(red: 0.80, green: 0.20, blue: 0.20)
        public var legalMove: Color = Color(red: 0.30, green: 0.30, blue: 0.30, opacity: 0.4)
        
        public init() {}
    }
    
    public struct Yellow: ChessboardColorScheme {
        public var light: Color = Color(red: 1.0, green: 1.0, blue: 0.85)
        public var dark: Color = Color(red: 1.0, green: 1.0, blue: 0.55)
        
        public var label: Color = Color(red: 0.20, green: 0.20, blue: 0.20)
        
        public var selected: Color = Color(red: 0.20, green: 0.80, blue: 0.20)
        public var hinted: Color = Color(red: 0.80, green: 0.20, blue: 0.20)
        public var legalMove: Color = Color(red: 0.30, green: 0.30, blue: 0.30, opacity: 0.4)
        
        public init() {}
    }
    
    public struct Purple: ChessboardColorScheme {
        public var light: Color = Color(red: 0.85, green: 0.85, blue: 1.0)
        public var dark: Color = Color(red: 0.55, green: 0.55, blue: 1.0)
        
        public var label: Color = Color(red: 0.20, green: 0.20, blue: 0.20)
        
        public var selected: Color = Color(red: 0.20, green: 0.80, blue: 0.20)
        public var hinted: Color = Color(red: 0.80, green: 0.20, blue: 0.20)
        public var legalMove: Color = Color(red: 0.30, green: 0.30, blue: 0.30, opacity: 0.4)
        
        public init() {}
    }
    
    public static let light = Light()
    public static let dark = Dark()
    public static let orange = Orange()
    public static let blue = Blue()
    public static let green = Green()
    public static let red = Red()
    public static let yellow = Yellow()
    public static let purple = Purple()
}

public extension ChessboardColorScheme where Self == ChessboardColorSchemes.Light {
    static var light: ChessboardColorSchemes.Light { ChessboardColorSchemes.light }
}

public extension ChessboardColorScheme where Self == ChessboardColorSchemes.Dark {
    static var dark: ChessboardColorSchemes.Dark { ChessboardColorSchemes.dark }
}

public extension ChessboardColorScheme where Self == ChessboardColorSchemes.Orange {
    static var orange: ChessboardColorSchemes.Orange { ChessboardColorSchemes.orange }
}

public extension ChessboardColorScheme where Self == ChessboardColorSchemes.Blue {
    static var blue: ChessboardColorSchemes.Blue { ChessboardColorSchemes.blue }
}

public extension ChessboardColorScheme where Self == ChessboardColorSchemes.Green {
    static var green: ChessboardColorSchemes.Green { ChessboardColorSchemes.green }
}

public extension ChessboardColorScheme where Self == ChessboardColorSchemes.Red {
    static var red: ChessboardColorSchemes.Red { ChessboardColorSchemes.red }
}

public extension ChessboardColorScheme where Self == ChessboardColorSchemes.Yellow {
    static var yellow: ChessboardColorSchemes.Yellow { ChessboardColorSchemes.yellow }
}

public extension ChessboardColorScheme where Self == ChessboardColorSchemes.Purple {
    static var purple: ChessboardColorSchemes.Purple { ChessboardColorSchemes.purple }
}
