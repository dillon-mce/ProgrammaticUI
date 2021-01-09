//
//  ProgrammaticLayout
//
//  Created by Dillon McElhinney on 1/5/21.
//

import UIKit

class StackViewLayoutViewController: UIViewController {
    lazy var contentView: StackViewLayoutView = .init()

    override func loadView() {
        view = contentView
    }
}
