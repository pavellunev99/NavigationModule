//
//  SwiftUIView.swift
//  
//
//  Created by Павел Лунев on 17.01.2022.
//

import Foundation
import SwiftUI

extension View {
    public func toAnyView()->AnyView {
        AnyView(self)
    }
}
