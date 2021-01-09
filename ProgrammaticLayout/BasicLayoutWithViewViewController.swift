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
    }
}
