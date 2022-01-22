//
//  NavigationContainerViewModel.swift
//  
//
//  Created by Павел Лунев on 17.01.2022.
//

import Foundation
import SwiftUI

public class NavigationContainerViewModel: ObservableObject {
    @Published public var currentScreen: Screen?
    public var navigationType: NavigationType = .push

    public var screenStack = NavigationStack() {
        didSet {
            self.currentScreen = screenStack.top()
        }
    }

    public func push(screenView: AnyView) {
        self.navigationType = .push
        let screen = Screen(view: screenView)
        screenStack.push(screen)
    }

    public func pop() {
        self.navigationType = .pop
        screenStack.pop()
    }

    public func popToRoot() {
        self.navigationType = .popToRoot
        screenStack.popToRoot()
    }

    public init() {
    }
}
