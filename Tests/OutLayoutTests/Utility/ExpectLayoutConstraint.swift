#if canImport(UIKit)
import UIKit
#else
import AppKit
#endif

import OutLayout

struct ExpectLayoutConstraint {
    var firstItem: View
    var firstAttribute: NSLayoutConstraint.Attribute
    var secondItem: View? = nil
    var secondAttribute: NSLayoutConstraint.Attribute = .notAnAttribute
    var constant: CGFloat = .zero
    var priority: Priority = .required
}

extension NSLayoutConstraint {
    static func ==(lhs: NSLayoutConstraint, rhs: ExpectLayoutConstraint) -> Bool {
        guard lhs.firstItem === rhs.firstItem else { return false }
        guard lhs.firstAttribute == rhs.firstAttribute else { return false }
        guard lhs.secondItem === rhs.secondItem else { return false }
        guard lhs.secondAttribute == rhs.secondAttribute else { return false }
        guard lhs.constant == rhs.constant else { return false }
        guard lhs.priority == rhs.priority else { return false }

        return true
    }
}
