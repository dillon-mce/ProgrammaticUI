//
//  ProgrammaticLayout
//
//  Created by Dillon McElhinney on 1/5/21.
//

import UIKit

protocol ComposedLayoutViewControllerDelegate: AnyObject {
    func attemptedLogin(with loginInfo: LoginInfo)
}

class ComposedLayoutViewController: UIViewController {

    weak var delegate: ComposedLayoutViewControllerDelegate?
    lazy var contentView: ComposedLayoutView = .init()

    override func loadView() {
        contentView.delegate = self
        view = contentView
    }

    deinit {
        print("Getting rid of ComposedLayoutViewController")
    }
}

extension ComposedLayoutViewController: ComposedLayoutViewDelegate {
    func didTapSubmit(_ loginStack: LoginStackView, loginInfo: LoginInfo?) {
        guard let loginInfo = loginInfo else {
            return loginStack.showWarning()
        }
        delegate?.attemptedLogin(with: loginInfo)
    }
}
