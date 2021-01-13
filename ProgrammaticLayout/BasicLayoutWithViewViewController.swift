//
//  ProgrammaticLayout
//
//  Created by Dillon McElhinney on 1/5/21.
//

import UIKit

class BasicLayoutWithViewViewController: UIViewController {

    lazy var contentView: BasicLayoutView = .init()

    override func loadView() {
        view = contentView
        contentView.delegate = self
    }
}

extension BasicLayoutWithViewViewController: BasicLayoutViewDelegate {
    func submitButtonTapped() {
        let nextVC = UIViewController()
        nextVC.view.backgroundColor = .systemBlue
        show(nextVC, sender: self)
    }


}
