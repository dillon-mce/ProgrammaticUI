//
//  LoggedInViewController.swift
//  ProgrammaticLayout
//
//  Created by Dillon McElhinney on 1/21/21.
//

import UIKit

class LoggedInViewController: UIViewController {

    lazy var contentView: LoggedInView = .init()

    override func loadView() {
        view = contentView
    }
}
