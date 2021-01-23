//
//  FailedLoginView.swift
//  ProgrammaticLayout
//
//  Created by Dillon McElhinney on 1/21/21.
//

import Anchorage
import UIKit

class FailedLoginView: ProgrammaticView {
    private let label = UILabel()

    override func configure() {
        backgroundColor = .systemBackground

        label.text = "Unable to log you in!"
        label.textColor = .systemRed
    }

    override func constrain() {
        addSubview(label)

        label.centerAnchors == centerAnchors
    }
}
