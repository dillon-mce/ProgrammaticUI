//
//  Coordinator.swift
//  ProgrammaticLayout
//
//  Created by Dillon McElhinney on 1/23/21.
//

import UIKit

class Coordinator {
    let window: UIWindow
    private var viewController: UIViewController?

    init(window: UIWindow) {
        self.window = window
    }

    func start() {
        if Authenticator.shared.isLoggedIn {
            viewController = LoggedInViewController()
        } else {
            let loginVC = ComposedLayoutViewController()
            loginVC.delegate = self
            viewController = loginVC
        }
        window.rootViewController = viewController
        window.makeKeyAndVisible()
    }
}

extension Coordinator: ComposedLayoutViewControllerDelegate {
    func attemptedLogin(with loginInfo: LoginInfo) {
        let isLoggedIn = Authenticator.shared.authenticateUser(with: loginInfo)
        if isLoggedIn {
            viewController = LoggedInViewController()
            window.rootViewController = viewController
            UIView.transition(with: window, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        } else {
            viewController?.show(FailedLoginViewController(), sender: viewController)
        }
    }
}
