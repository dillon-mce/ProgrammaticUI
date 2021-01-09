//
//  ProgrammaticLayout
//
//  Created by Dillon McElhinney on 1/5/21.
//

import UIKit

class BasicLayoutViewController: UIViewController {

    let usernameField = UITextField()
    let passwordField = UITextField()
    let submitButton = UIButton(type: .custom)

    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
        constrain()
    }

    private func configure() {
        view.backgroundColor = .secondarySystemBackground

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

    private func constrain() {
        view.addSubview(usernameField)
        view.addSubview(passwordField)
        view.addSubview(submitButton)

        usernameField.translatesAutoresizingMaskIntoConstraints = false
        usernameField.leadingAnchor.constraint(equalTo: passwordField.leadingAnchor).isActive = true
        usernameField.trailingAnchor.constraint(equalTo: passwordField.trailingAnchor).isActive = true

        passwordField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.topAnchor.constraint(equalTo: usernameField.bottomAnchor, constant: 8).isActive = true
        passwordField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        passwordField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        passwordField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true

        submitButton.translatesAutoresizingMaskIntoConstraints = false
        submitButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 8).isActive = true
        submitButton.centerXAnchor.constraint(equalTo: passwordField.centerXAnchor).isActive = true
        submitButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
}
