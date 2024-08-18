import XCTest
@testable import OutLayout

final class ViewHoldableTests: XCTestCase {
    private struct _ViewHoldable: ViewHoldable {
        var view: View
    }

    @MainActor
    func testDirection() throws {
        let container = View()
        let viewHoldable = _ViewHoldable(view: .init())

        container.addSubview(viewHoldable.view)
        viewHoldable.top(to: container, constant: 1, priority: .init(10))
        viewHoldable.bottom(to: container, constant: 2, priority: .init(20))
        viewHoldable.leading(to: container, constant: 3, priority: .init(30))
        viewHoldable.trailing(to: container, constant: 4, priority: .init(40))
        viewHoldable.centerX(to: container, constant: 5, priority: .init(50))
        viewHoldable.centerY(to: container, constant: 6, priority: .init(60))
        viewHoldable.width(to: container, constant: 7, priority: .init(70))
        viewHoldable.height(to: container, constant: 8, priority: .init(80))
        viewHoldable.width(constant: 9, priority: .init(90))
        viewHoldable.height(constant: 10, priority: .init(100))

        let containerExpects: [ExpectLayoutConstraint] = [
            .init(firstItem: viewHoldable.view, firstAttribute: .top, secondItem: container, secondAttribute: .top, constant: 1, priority: .init(10)),
            .init(firstItem: viewHoldable.view, firstAttribute: .bottom, secondItem: container, secondAttribute: .bottom, constant: 2, priority: .init(20)),
            .init(firstItem: viewHoldable.view, firstAttribute: .leading, secondItem: container, secondAttribute: .leading, constant: 3, priority: .init(30)),
            .init(firstItem: viewHoldable.view, firstAttribute: .trailing, secondItem: container, secondAttribute: .trailing, constant: 4, priority: .init(40)),
            .init(firstItem: viewHoldable.view, firstAttribute: .centerX, secondItem: container, secondAttribute: .centerX, constant: 5, priority: .init(50)),
            .init(firstItem: viewHoldable.view, firstAttribute: .centerY, secondItem: container, secondAttribute: .centerY, constant: 6, priority: .init(60)),
            .init(firstItem: viewHoldable.view, firstAttribute: .width, secondItem: container, secondAttribute: .width, constant: 7, priority: .init(70)),
            .init(firstItem: viewHoldable.view, firstAttribute: .height, secondItem: container, secondAttribute: .height, constant: 8, priority: .init(80)),
        ]
        let viewExpects: [ExpectLayoutConstraint] = [
            .init(firstItem: viewHoldable.view, firstAttribute: .width, constant: 9, priority: .init(90)),
            .init(firstItem: viewHoldable.view, firstAttribute: .height, constant: 10, priority: .init(100)),
        ]

        XCTAssertEqual(container.constraints.count, containerExpects.count)
        for expect in containerExpects {
            XCTAssertTrue(container.constraints.contains { $0 == expect })
        }

        XCTAssertEqual(viewHoldable.view.constraints.count, viewExpects.count)
        for expect in viewExpects {
            XCTAssertTrue(viewHoldable.view.constraints.contains { $0 == expect })
        }
    }

    @MainActor
    func testViewReference() throws {
        let container = View()
        let viewHoldable = _ViewHoldable(view: .init())

        container.addSubview(viewHoldable.view)

        let results = [
            viewHoldable.top(to: container),
            viewHoldable.bottom(to: container),
            viewHoldable.leading(to: container),
            viewHoldable.trailing(to: container),
            viewHoldable.centerX(to: container),
            viewHoldable.centerY(to: container),
            viewHoldable.width(to: container),
            viewHoldable.width(constant: 1),
            viewHoldable.height(to: container),
            viewHoldable.height(constant: 1),
        ]

        XCTAssertTrue(results.allSatisfy { $0.view === viewHoldable.view })
    }
}
