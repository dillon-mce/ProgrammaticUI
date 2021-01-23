//
//  ProgrammaticLayout
//
//  Created by Dillon McElhinney on 1/5/21.
//

import Anchorage
import UIKit

protocol LoginStackViewDelegate: AnyObject {
    func didTapSubmit(_ loginStack: LoginStackView, loginInfo: LoginInfo?)
}

class LoginStackView: ProgrammaticView {
    weak var delegate: LoginStackViewDelegate?

    private let stackView = UIStackView()
    private let usernameField = UITextField()
    private let passwordField = UITextField()
    private let warningLabel = UILabel()
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

        warningLabel.text = "You must supply a username and password to log in."
        warningLabel.numberOfLines = 0
        warningLabel.textAlignment = .center
        warningLabel.textColor = .systemRed
        warningLabel.font = .preferredFont(forTextStyle: .callout)
        warningLabel.isHidden = true

        submitButton.setTitle("Log in", for: .normal)
        submitButton.backgroundColor = .systemBlue
        submitButton.layer.cornerRadius = 8
        submitButton.addTarget(self, action: #selector(submitTapped), for: .touchUpInside)
    }

    override func constrain() {
        addSubview(stackView)
        stackView.addArrangedSubviews(usernameField, passwordField, warningLabel, submitButton)

        stackView.edgeAnchors == edgeAnchors
        passwordField.horizontalAnchors == horizontalAnchors
        usernameField.horizontalAnchors == horizontalAnchors
        warningLabel.horizontalAnchors == horizontalAnchors
        submitButton.widthAnchor == 200
    }

    @objc private func submitTapped() {
        let loginInfo = LoginInfo(username: usernameField.text, password: passwordField.text)
        delegate?.didTapSubmit(self, loginInfo: loginInfo)
    }

    func showWarning() {
        if warningLabel.isHidden {
            UIView.animate(withDuration: 0.3) {
                self.warningLabel.isHidden = false
            }
        }
    }
}

struct LoginInfo {
    let username: String
    let password: String

    init?(username: String?, password: String?) {
        guard let username = username,
              !username.isEmpty,
              let password = password,
              !password.isEmpty else { return nil }
        self.username = username
        self.password = password
    }
}
