//
//  ProgrammaticLayout
//
//  Created by Dillon McElhinney on 1/5/21.
//

import Anchorage
import UIKit

class AnchorageLayoutView: ProgrammaticView {
    private let usernameField = UITextField()
    private let passwordField = UITextField()
    private let submitButton = UIButton(type: .custom)

    override func configure() {
        backgroundColor = .secondarySystemBackground

        usernameField.placeholder = "Username"
        usernameField.borderStyle = .roundedRect

        passwordField.placeholder = "Password"
        passwordField.textContentType = .password
        passwordField.isSecureTextEntry = true
        passwordField.borderStyle = .roundedRect

        submitButton.setTitle("Log in", for: .normal)
        submitButton.backgroundColor = .systemBlue
        submitButton.layer.cornerRadius = 8
    }

    override func constrain() {
        addSubviews(usernameField, passwordField, submitButton)

        passwordField.centerYAnchor == centerYAnchor
        passwordField.horizontalAnchors == horizontalAnchors + 20

        usernameField.bottomAnchor == passwordField.topAnchor - 8
        usernameField.horizontalAnchors == passwordField.horizontalAnchors

        submitButton.topAnchor == passwordField.bottomAnchor + 8
        submitButton.centerXAnchor == passwordField.centerXAnchor
        submitButton.widthAnchor == 200
    }
}
