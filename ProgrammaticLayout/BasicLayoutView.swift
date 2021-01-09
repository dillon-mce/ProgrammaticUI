//
//  ProgrammaticLayout
//
//  Created by Dillon McElhinney on 1/5/21.
//

import UIKit

class BasicLayoutView: ProgrammaticView {

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
        addSubview(usernameField)
        addSubview(passwordField)
        addSubview(submitButton)

        usernameField.translatesAutoresizingMaskIntoConstraints = false
        usernameField.leadingAnchor.constraint(equalTo: passwordField.leadingAnchor).isActive = true
        usernameField.trailingAnchor.constraint(equalTo: passwordField.trailingAnchor).isActive = true

        passwordField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.topAnchor.constraint(equalTo: usernameField.bottomAnchor, constant: 8).isActive = true
        passwordField.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        passwordField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        passwordField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true

        submitButton.translatesAutoresizingMaskIntoConstraints = false
        submitButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 8).isActive = true
        submitButton.centerXAnchor.constraint(equalTo: passwordField.centerXAnchor).isActive = true
        submitButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
}
