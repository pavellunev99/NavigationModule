//
//  NavigationStack.swift
//  
//
//  Created by Павел Лунев on 17.01.2022.
//

import Foundation

public struct NavigationStack {
    private var screens = [Screen]()

    mutating func push(_ s: Screen) {
        self.screens.append(s)
    }

    mutating func pop() {
        _ = self.screens.popLast()
    }

    mutating func popToRoot() {
        self.screens.removeAll()
    }

    func top()->Screen? {
        return self.screens.last
    }

}
