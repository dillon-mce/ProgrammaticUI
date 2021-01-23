//
//  Authenticatior.swift
//  ProgrammaticLayout
//
//  Created by Dillon McElhinney on 1/21/21.
//

import Foundation

class Authenticator {
    static let shared = Authenticator()

    private init() {}

    func authenticateUser(with loginInfo: LoginInfo) -> Bool {
        isLoggedIn = loginInfo.username.count >= 4 && loginInfo.password == "1234"
        return isLoggedIn
    }

    private(set) var isLoggedIn = false
}
