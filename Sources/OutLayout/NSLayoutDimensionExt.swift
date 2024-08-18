#if canImport(UIKit)
import UIKit
#else
import AppKit
#endif

extension NSLayoutDimension {
    func constraint(equalTo: NSLayoutAnchor<NSLayoutDimension>, constant: CGFloat, priority: Priority, isActive: Bool) -> NSLayoutConstraint {
        let c = constraint(equalTo: equalTo, constant: constant)
        c.priority = priority
        c.isActive = isActive
        return c
    }

    func constraint(equalToConstant: CGFloat, priority: Priority, isActive: Bool) -> NSLayoutConstraint {
        let c = constraint(equalToConstant: equalToConstant)
        c.priority = priority
        c.isActive = isActive
        return c
    }
}
