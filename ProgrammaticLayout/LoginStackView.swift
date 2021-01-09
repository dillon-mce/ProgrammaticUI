//
//  ProgrammaticLayout
//
//  Created by Dillon McElhinney on 1/5/21.
//

import Anchorage
import UIKit

class LoginStackView: ProgrammaticView {
    private let stackView = UIStackView()
    private let usernameField = UITextField()
    private let passwordField = UITextField()
    private let submitButton = UIButton(type: .custom)

    override func configure() {
        backgroundColor = .secondarySystemBackground

        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.alignment = .center

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
        addSubview(stackView)
        stackView.addArrangedSubviews(usernameField, passwordField, submitButton)

        stackView.edgeAnchors == edgeAnchors
        passwordField.horizontalAnchors == horizontalAnchors
        usernameField.horizontalAnchors == horizontalAnchors
        submitButton.widthAnchor == 200
    }
}
