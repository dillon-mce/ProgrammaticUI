//
//  ProgrammaticLayout
//
//  Created by Dillon McElhinney on 1/5/21.
//

import Anchorage
import UIKit

protocol ComposedLayoutViewDelegate: AnyObject {
    func didTapSubmit(_ loginStack: LoginStackView, loginInfo: LoginInfo?)
}

class ComposedLayoutView: ProgrammaticView {
    weak var delegate: ComposedLayoutViewDelegate?

    private let loginStack = LoginStackView()

    override func configure() {
        backgroundColor = .secondarySystemBackground
        loginStack.delegate = self
    }

    override func constrain() {
        addSubview(loginStack)

        loginStack.horizontalAnchors == horizontalAnchors + 20
        loginStack.centerYAnchor == centerYAnchor
    }
}

extension ComposedLayoutView: LoginStackViewDelegate {
    func didTapSubmit(_ loginStack: LoginStackView, loginInfo: LoginInfo?) {
        delegate?.didTapSubmit(loginStack, loginInfo: loginInfo)
    }
}
