#if canImport(UIKit)
import UIKit
#else
import AppKit
#endif

extension NSLayoutXAxisAnchor {
    func constraint(equalTo: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat, priority: Priority, isActive: Bool) -> NSLayoutConstraint {
        let c = constraint(equalTo: equalTo, constant: constant)
        c.priority = priority
        c.isActive = isActive
        return c
    }
}
