//
//  Transition.swift
//  
//
//  Created by Павел Лунев on 17.01.2022.
//

import Foundation
import SwiftUI

public enum Transition {
    case none
    case custom(AnyTransition)
}

public enum NavigationType {
    case pop
    case push
    case popToRoot
}
