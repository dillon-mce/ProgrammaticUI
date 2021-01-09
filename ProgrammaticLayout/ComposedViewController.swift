//
//  ProgrammaticLayout
//
//  Created by Dillon McElhinney on 1/5/21.
//

import UIKit

class ComposedLayoutViewController: UIViewController {

    lazy var contentView: ComposedLayoutView = .init()

    override func loadView() {
        view = contentView
    }
}
