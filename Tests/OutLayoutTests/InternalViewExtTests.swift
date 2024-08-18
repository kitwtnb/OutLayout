import XCTest
@testable import OutLayout

final class InternalViewExtTests: XCTestCase {
    @MainActor
    func testViewReference() throws {
        let container = View()
        let view = View()

        container.addSubview(view)

        let results = [
            view.top(to: container),
            view.bottom(to: container),
            view.leading(to: container),
            view.trailing(to: container),
            view.centerX(to: container),
            view.centerY(to: container),
            view.width(to: container),
            view.width(constant: 1),
            view.height(to: container),
            view.height(constant: 1),
        ]

        XCTAssertTrue(results.allSatisfy { $0.view === view })
    }
}
