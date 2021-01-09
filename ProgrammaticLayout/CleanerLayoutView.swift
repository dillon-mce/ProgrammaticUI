//
//  ProgrammaticLayout
//
//  Created by Dillon McElhinney on 1/5/21.
//

import UIKit

class CleanerLayoutView: ProgrammaticView {

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
        addConstrainedSubviews(usernameField, passwordField, submitButton)

        NSLayoutConstraint.activate([
            usernameField.leadingAnchor.constraint(equalTo: passwordField.leadingAnchor),
            usernameField.trailingAnchor.constraint(equalTo: passwordField.trailingAnchor),

            passwordField.topAnchor.constraint(equalTo: usernameField.bottomAnchor, constant: 8),
            passwordField.centerYAnchor.constraint(equalTo: centerYAnchor),
            passwordField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            passwordField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),

            submitButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 8),
            submitButton.centerXAnchor.constraint(equalTo: passwordField.centerXAnchor),
            submitButton.widthAnchor.constraint(equalToConstant: 200),
        ])
    }
}
