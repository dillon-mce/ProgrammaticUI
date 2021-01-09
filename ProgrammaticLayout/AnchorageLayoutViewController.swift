//
//  ProgrammaticLayout
//
//  Created by Dillon McElhinney on 1/5/21.
//

import UIKit

class AnchorageLayoutViewController: UIViewController {

    lazy var contentView: AnchorageLayoutView = .init()

    override func loadView() {
        view = contentView
    }
}
