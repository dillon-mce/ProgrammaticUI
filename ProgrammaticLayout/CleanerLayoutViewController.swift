//
//  ProgrammaticLayout
//
//  Created by Dillon McElhinney on 1/5/21.
//

import UIKit

class CleanerLayoutViewController: UIViewController {

    lazy var contentView: CleanerLayoutView = .init()

    override func loadView() {
        view = contentView
    }
}
