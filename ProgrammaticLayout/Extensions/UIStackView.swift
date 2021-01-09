//
//  ProgrammaticLayout
//
//  Created by Dillon McElhinney on 1/5/21.
//
import UIKit

extension UIStackView {
    func addArrangedSubviews(_ views: UIView...) {
        views.forEach { view in addArrangedSubview(view) }
    }
}
