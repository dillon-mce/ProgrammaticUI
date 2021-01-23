//
//  FailedLoginViewController.swift
//  ProgrammaticLayout
//
//  Created by Dillon McElhinney on 1/21/21.
//

import UIKit

class FailedLoginViewController: UIViewController {

    lazy var contentView: FailedLoginView = .init()

    override func loadView() {
        view = contentView
    }
}
