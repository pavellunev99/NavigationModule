//
//  Screen.swift
//  
//
//  Created by Павел Лунев on 17.01.2022.
//

import Foundation
import SwiftUI

public struct Screen: Identifiable, Equatable {
    public let id = UUID().uuidString
    let view: AnyView

    public static func == (lhs: Screen, rhs: Screen)-> Bool {
        return lhs.id == rhs.id
    }
}
