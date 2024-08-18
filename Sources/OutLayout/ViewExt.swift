#if canImport(UIKit)
import UIKit
#else
import AppKit
#endif

extension View {
    @discardableResult
    @MainActor
    public func top(to view: View, constant: CGFloat = .zero, priority: Priority = .required, safeArea: Bool = false, isActive: Bool = true) -> _ConstraintResult {
        top(to: safeArea ? view.safeAreaLayoutGuide.topAnchor : view.topAnchor, constant: constant, priority: priority, isActive: isActive)
    }

    @discardableResult
    public func top(to anchor: NSLayoutYAxisAnchor, constant: CGFloat = .zero, priority: Priority = .required, isActive: Bool = true) -> _ConstraintResult {
        let constraint = topAnchor.constraint(equalTo: anchor, constant: constant, priority: priority, isActive: isActive)
        return .init(constraint: constraint, view: self)
    }

    @discardableResult
    @MainActor
    public func bottom(to view: View, constant: CGFloat = .zero, priority: Priority = .required, safeArea: Bool = false, isActive: Bool = true) -> _ConstraintResult {
        bottom(to: safeArea ? view.safeAreaLayoutGuide.bottomAnchor : view.bottomAnchor, constant: constant, priority: priority, isActive: isActive)
    }

    @discardableResult
    public func bottom(to anchor: NSLayoutYAxisAnchor, constant: CGFloat = .zero, priority: Priority = .required, isActive: Bool = true) -> _ConstraintResult {
        let constraint = bottomAnchor.constraint(equalTo: anchor, constant: constant, priority: priority, isActive: isActive)
        return .init(constraint: constraint, view: self)
    }

    @discardableResult
    @MainActor
    public func leading(to view: View, constant: CGFloat = .zero, priority: Priority = .required, safeArea: Bool = false, isActive: Bool = true) -> _ConstraintResult {
        leading(to: safeArea ? view.safeAreaLayoutGuide.leadingAnchor : view.leadingAnchor, constant: constant, priority: priority, isActive: isActive)
    }

    @discardableResult
    public func leading(to anchor: NSLayoutXAxisAnchor, constant: CGFloat = .zero, priority: Priority = .required, isActive: Bool = true) -> _ConstraintResult {
        let constraint = leadingAnchor.constraint(equalTo: anchor, constant: constant, priority: priority, isActive: isActive)
        return .init(constraint: constraint, view: self)
    }

    @discardableResult
    @MainActor
    public func trailing(to view: View, constant: CGFloat = .zero, priority: Priority = .required, safeArea: Bool = false, isActive: Bool = true) -> _ConstraintResult {
        trailing(to: safeArea ? view.safeAreaLayoutGuide.trailingAnchor : view.trailingAnchor, constant: constant, priority: priority, isActive: isActive)
    }

    @discardableResult
    public func trailing(to anchor: NSLayoutXAxisAnchor, constant: CGFloat = .zero, priority: Priority = .required, isActive: Bool = true) -> _ConstraintResult {
        let constraint = trailingAnchor.constraint(equalTo: anchor, constant: constant, priority: priority, isActive: isActive)
        return .init(constraint: constraint, view: self)
    }
}

extension View {
    @discardableResult
    @MainActor
    public func centerX(to view: View, constant: CGFloat = .zero, priority: Priority = .required, isActive: Bool = true) -> _ConstraintResult {
        centerX(to: view.centerXAnchor, constant: constant, priority: priority, isActive: isActive)
    }

    @discardableResult
    public func centerX(to anchor: NSLayoutXAxisAnchor, constant: CGFloat = .zero, priority: Priority = .required, isActive: Bool = true) -> _ConstraintResult {
        let constraint = centerXAnchor.constraint(equalTo: anchor, constant: constant, priority: priority, isActive: isActive)
        return .init(constraint: constraint, view: self)
    }

    @discardableResult
    @MainActor
    public func centerY(to view: View, constant: CGFloat = .zero, priority: Priority = .required, isActive: Bool = true) -> _ConstraintResult {
        centerY(to: view.centerYAnchor, constant: constant, priority: priority, isActive: isActive)
    }

    @discardableResult
    public func centerY(to anchor: NSLayoutYAxisAnchor, constant: CGFloat = .zero, priority: Priority = .required, isActive: Bool = true) -> _ConstraintResult {
        let constraint = centerYAnchor.constraint(equalTo: anchor, constant: constant, priority: priority, isActive: isActive)
        return .init(constraint: constraint, view: self)
    }
}

extension View {
    @discardableResult
    public func width(to view: View, constant: CGFloat = .zero, priority: Priority = .required, isActive: Bool = true) -> _ConstraintResult {
        let constraint = widthAnchor.constraint(equalTo: view.widthAnchor, constant: constant, priority: priority, isActive: isActive)
        return .init(constraint: constraint, view: self)
    }

    @discardableResult
    public func width(constant: CGFloat, priority: Priority = .required, isActive: Bool = true) -> _ConstraintResult {
        let constraint = widthAnchor.constraint(equalToConstant: constant, priority: priority, isActive: isActive)
        return .init(constraint: constraint, view: self)
    }

    @discardableResult
    public func height(to view: View, constant: CGFloat = .zero, priority: Priority = .required, isActive: Bool = true) -> _ConstraintResult {
        let constraint = heightAnchor.constraint(equalTo: view.heightAnchor, constant: constant, priority: priority, isActive: isActive)
        return .init(constraint: constraint, view: self)
    }

    @discardableResult
    public func height(constant: CGFloat, priority: Priority = .required, isActive: Bool = true) -> _ConstraintResult {
        let constraint = heightAnchor.constraint(equalToConstant: constant, priority: priority, isActive: isActive)
        return .init(constraint: constraint, view: self)
    }
}
