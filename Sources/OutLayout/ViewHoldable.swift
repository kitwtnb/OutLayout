#if canImport(UIKit)
import UIKit
#else
import AppKit
#endif

protocol ViewHoldable: _Layoutable {
    var view: View { get }
}

extension ViewHoldable {
    @discardableResult
    @MainActor
    public func top(to anchor: NSLayoutYAxisAnchor, constant: CGFloat, priority: Priority) -> _AutoLayoutResult {
        view.top(to: anchor, constant: constant, priority: priority, isActive: true)
        return .init(view: view)
    }

    @discardableResult
    @MainActor
    public func bottom(to anchor: NSLayoutYAxisAnchor, constant: CGFloat, priority: Priority) -> _AutoLayoutResult {
        view.bottom(to: anchor, constant: constant, priority: priority, isActive: true)
        return .init(view: view)
    }

    @discardableResult
    @MainActor
    public func leading(to anchor: NSLayoutXAxisAnchor, constant: CGFloat, priority: Priority) -> _AutoLayoutResult {
        view.leading(to: anchor, constant: constant, priority: priority, isActive: true)
        return .init(view: view)
    }

    @discardableResult
    @MainActor
    public func trailing(to anchor: NSLayoutXAxisAnchor, constant: CGFloat, priority: Priority) -> _AutoLayoutResult {
        view.trailing(to: anchor, constant: constant, priority: priority, isActive: true)
        return .init(view: view)
    }
}

extension ViewHoldable {
    @discardableResult
    @MainActor
    public func centerX(to anchor: NSLayoutXAxisAnchor, constant: CGFloat, priority: Priority) -> _AutoLayoutResult {
        view.centerX(to: anchor, constant: constant, priority: priority, isActive: true)
        return .init(view: view)
    }

    @discardableResult
    @MainActor
    public func centerY(to anchor: NSLayoutYAxisAnchor, constant: CGFloat, priority: Priority) -> _AutoLayoutResult {
        view.centerY(to: anchor, constant: constant, priority: priority, isActive: true)
        return .init(view: view)
    }
}

extension ViewHoldable {
    @discardableResult
    @MainActor
    public func width(to _view: View, constant: CGFloat, priority: Priority) -> _AutoLayoutResult {
        view.width(to: _view, constant: constant, priority: priority, isActive: true)
        return .init(view: view)
    }

    @discardableResult
    @MainActor
    public func width(constant: CGFloat, priority: Priority) -> _AutoLayoutResult {
        view.width(constant: constant, priority: priority, isActive: true)
        return .init(view: view)
    }

    @discardableResult
    @MainActor
    public func height(to _view: View, constant: CGFloat, priority: Priority) -> _AutoLayoutResult {
        view.height(to: _view, constant: constant, priority: priority, isActive: true)
        return .init(view: view)
    }

    @discardableResult
    @MainActor
    public func height(constant: CGFloat, priority: Priority) -> _AutoLayoutResult {
        view.height(constant: constant, priority: priority, isActive: true)
        return .init(view: view)
    }
}
