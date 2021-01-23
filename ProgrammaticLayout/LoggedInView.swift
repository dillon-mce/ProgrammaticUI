//
//  LoggedInView.swift
//  ProgrammaticLayout
//
//  Created by Dillon McElhinney on 1/21/21.
//

import Anchorage
import UIKit

class LoggedInView: ProgrammaticView {
    private let label = UILabel()

    override func configure() {
        backgroundColor = .systemBackground

        label.text = "You're logged in!"
        label.textColor = .systemGreen
    }

    override func constrain() {
        addSubview(label)

        label.centerAnchors == centerAnchors
    }
}
