#if canImport(UIKit)
import UIKit
#else
import AppKit
#endif

public protocol _Layoutable {
    @discardableResult
    @MainActor
    func top(to: View, constant: CGFloat, priority: Priority, safeArea: Bool) -> _AutoLayoutResult

    @discardableResult
    @MainActor
    func top(to: NSLayoutYAxisAnchor, constant: CGFloat, priority: Priority) -> _AutoLayoutResult

    @discardableResult
    @MainActor
    func bottom(to: View, constant: CGFloat, priority: Priority, safeArea: Bool) -> _AutoLayoutResult

    @discardableResult
    @MainActor
    func bottom(to: NSLayoutYAxisAnchor, constant: CGFloat, priority: Priority) -> _AutoLayoutResult

    @discardableResult
    @MainActor
    func leading(to: View, constant: CGFloat, priority: Priority, safeArea: Bool) -> _AutoLayoutResult

    @discardableResult
    @MainActor
    func leading(to: NSLayoutXAxisAnchor, constant: CGFloat, priority: Priority) -> _AutoLayoutResult

    @discardableResult
    @MainActor
    func trailing(to: View, constant: CGFloat, priority: Priority, safeArea: Bool) -> _AutoLayoutResult

    @discardableResult
    @MainActor
    func trailing(to: NSLayoutXAxisAnchor, constant: CGFloat, priority: Priority) -> _AutoLayoutResult

    @discardableResult
    @MainActor
    func centerX(to: View, constant: CGFloat, priority: Priority) -> _AutoLayoutResult

    @discardableResult
    @MainActor
    func centerX(to: NSLayoutXAxisAnchor, constant: CGFloat, priority: Priority) -> _AutoLayoutResult

    @discardableResult
    @MainActor
    func centerY(to: View, constant: CGFloat, priority: Priority) -> _AutoLayoutResult

    @discardableResult
    @MainActor
    func centerY(to: NSLayoutYAxisAnchor, constant: CGFloat, priority: Priority) -> _AutoLayoutResult

    @discardableResult
    @MainActor
    func width(to: View, constant: CGFloat, priority: Priority) -> _AutoLayoutResult

    @discardableResult
    @MainActor
    func width(constant: CGFloat, priority: Priority) -> _AutoLayoutResult

    @discardableResult
    @MainActor
    func height(to: View, constant: CGFloat, priority: Priority) -> _AutoLayoutResult

    @discardableResult
    @MainActor
    func height(constant: CGFloat, priority: Priority) -> _AutoLayoutResult
}

extension _Layoutable {
    @discardableResult
    @MainActor
    public func top(to view: View, constant: CGFloat = .zero, priority: Priority = .required, safeArea: Bool = false) -> _AutoLayoutResult {
        top(to: safeArea ? view.safeAreaLayoutGuide.topAnchor : view.topAnchor, constant: constant, priority: priority)
    }

    @discardableResult
    @MainActor
    public func top(to: NSLayoutYAxisAnchor, constant: CGFloat = .zero, priority: Priority = .required) -> _AutoLayoutResult {
        top(to: to, constant: constant, priority: priority)
    }

    @discardableResult
    @MainActor
    public func bottom(to view: View, constant: CGFloat = .zero, priority: Priority = .required, safeArea: Bool = false) -> _AutoLayoutResult {
        bottom(to: safeArea ? view.safeAreaLayoutGuide.bottomAnchor : view.bottomAnchor, constant: constant, priority: priority)
    }

    @discardableResult
    @MainActor
    public func bottom(to: NSLayoutYAxisAnchor, constant: CGFloat = .zero, priority: Priority = .required) -> _AutoLayoutResult {
        bottom(to: to, constant: constant, priority: priority)
    }

    @discardableResult
    @MainActor
    public func leading(to view: View, constant: CGFloat = .zero, priority: Priority = .required, safeArea: Bool = false) -> _AutoLayoutResult {
        leading(to: safeArea ? view.safeAreaLayoutGuide.leadingAnchor : view.leadingAnchor, constant: constant, priority: priority)
    }

    @discardableResult
    @MainActor
    public func leading(to: NSLayoutXAxisAnchor, constant: CGFloat = .zero, priority: Priority = .required) -> _AutoLayoutResult {
        leading(to: to, constant: constant, priority: priority)
    }

    @discardableResult
    @MainActor
    public func trailing(to view: View, constant: CGFloat = .zero, priority: Priority = .required, safeArea: Bool = false) -> _AutoLayoutResult {
        trailing(to: safeArea ? view.safeAreaLayoutGuide.trailingAnchor : view.trailingAnchor, constant: constant, priority: priority)
    }

    @discardableResult
    @MainActor
    public func trailing(to: NSLayoutXAxisAnchor, constant: CGFloat = .zero, priority: Priority = .required) -> _AutoLayoutResult {
        trailing(to: to, constant: constant, priority: priority)
    }
}

extension _Layoutable {
    @discardableResult
    @MainActor
    public func centerX(to view: View, constant: CGFloat = .zero, priority: Priority = .required) -> _AutoLayoutResult {
        centerX(to: view.centerXAnchor, constant: constant, priority: priority)
    }

    @discardableResult
    @MainActor
    public func centerX(to: NSLayoutXAxisAnchor, constant: CGFloat = .zero, priority: Priority = .required) -> _AutoLayoutResult {
        centerX(to: to, constant: constant, priority: priority)
    }

    @discardableResult
    @MainActor
    public func centerY(to view: View, constant: CGFloat = .zero, priority: Priority = .required) -> _AutoLayoutResult {
        centerY(to: view.centerYAnchor, constant: constant, priority: priority)
    }

    @discardableResult
    @MainActor
    public func centerY(to: NSLayoutYAxisAnchor, constant: CGFloat = .zero, priority: Priority = .required) -> _AutoLayoutResult {
        centerY(to: to, constant: constant, priority: priority)
    }
}

extension _Layoutable {
    @discardableResult
    @MainActor
    public func width(to: View, constant: CGFloat = .zero, priority: Priority = .required) -> _AutoLayoutResult {
        width(to: to, constant: constant, priority: priority)
    }

    @discardableResult
    @MainActor
    public func width(constant: CGFloat, priority: Priority = .required) -> _AutoLayoutResult {
        width(constant: constant, priority: priority)
    }

    @discardableResult
    @MainActor
    public func height(to: View, constant: CGFloat = .zero, priority: Priority = .required) -> _AutoLayoutResult {
        height(to: to, constant: constant, priority: priority)
    }

    @discardableResult
    @MainActor
    public func height(constant: CGFloat, priority: Priority = .required) -> _AutoLayoutResult {
        height(constant: constant, priority: priority)
    }
}
