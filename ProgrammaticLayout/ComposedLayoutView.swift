//
//  ProgrammaticLayout
//
//  Created by Dillon McElhinney on 1/5/21.
//

import Anchorage
import UIKit

class ComposedLayoutView: ProgrammaticView {
    private let loginStack = LoginStackView()

    override func configure() {
        backgroundColor = .secondarySystemBackground
    }

    override func constrain() {
        addSubview(loginStack)

        loginStack.horizontalAnchors == horizontalAnchors + 20
        loginStack.centerYAnchor == centerYAnchor
    }
}
