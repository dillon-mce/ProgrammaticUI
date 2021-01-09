//
//  ProgrammaticLayout
//
//  Created by Dillon McElhinney on 1/5/21.
//

import UIKit

class StackViewLayoutView: ProgrammaticView {
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
        addConstrainedSubview(stackView)
        stackView.addArrangedSubviews(usernameField, passwordField, submitButton)

        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),

            passwordField.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            usernameField.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            submitButton.widthAnchor.constraint(equalToConstant: 200),
        ])
    }
}
