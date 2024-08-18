#if canImport(UIKit)
import UIKit
#else
import AppKit
#endif

public struct _ConstraintResult: ViewHoldable {
    public let constraint: NSLayoutConstraint
    let view: View

    @MainActor
    init(constraint: NSLayoutConstraint, view: View) {
        self.constraint = constraint
        self.view = view
        view.translatesAutoresizingMaskIntoConstraints = false
    }
}
