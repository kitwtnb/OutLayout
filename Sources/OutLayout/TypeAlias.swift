#if canImport(UIKit)
import UIKit
public typealias View = UIView
public typealias Priority = UILayoutPriority
#else
import AppKit
public typealias View = NSView
public typealias Priority = NSLayoutConstraint.Priority
#endif
