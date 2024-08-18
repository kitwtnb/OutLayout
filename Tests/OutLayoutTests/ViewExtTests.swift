import XCTest
import OutLayout

final class ViewExtTests: XCTestCase {
    @MainActor
    func testDirection() throws {
        let container = View()
        let view = View()

        container.addSubview(view)
        view.top(to: container, constant: 1, priority: .init(10))
        view.bottom(to: container, constant: 2, priority: .init(20))
        view.leading(to: container, constant: 3, priority: .init(30))
        view.trailing(to: container, constant: 4, priority: .init(40))
        view.centerX(to: container, constant: 5, priority: .init(50))
        view.centerY(to: container, constant: 6, priority: .init(60))
        view.width(to: container, constant: 7, priority: .init(70))
        view.height(to: container, constant: 8, priority: .init(80))
        view.width(constant: 9, priority: .init(90))
        view.height(constant: 10, priority: .init(100))

        let containerExpects: [ExpectLayoutConstraint] = [
            .init(firstItem: view, firstAttribute: .top, secondItem: container, secondAttribute: .top, constant: 1, priority: .init(10)),
            .init(firstItem: view, firstAttribute: .bottom, secondItem: container, secondAttribute: .bottom, constant: 2, priority: .init(20)),
            .init(firstItem: view, firstAttribute: .leading, secondItem: container, secondAttribute: .leading, constant: 3, priority: .init(30)),
            .init(firstItem: view, firstAttribute: .trailing, secondItem: container, secondAttribute: .trailing, constant: 4, priority: .init(40)),
            .init(firstItem: view, firstAttribute: .centerX, secondItem: container, secondAttribute: .centerX, constant: 5, priority: .init(50)),
            .init(firstItem: view, firstAttribute: .centerY, secondItem: container, secondAttribute: .centerY, constant: 6, priority: .init(60)),
            .init(firstItem: view, firstAttribute: .width, secondItem: container, secondAttribute: .width, constant: 7, priority: .init(70)),
            .init(firstItem: view, firstAttribute: .height, secondItem: container, secondAttribute: .height, constant: 8, priority: .init(80)),
        ]
        let viewExpects: [ExpectLayoutConstraint] = [
            .init(firstItem: view, firstAttribute: .width, constant: 9, priority: .init(90)),
            .init(firstItem: view, firstAttribute: .height, constant: 10, priority: .init(100)),
        ]

        XCTAssertEqual(container.constraints.count, containerExpects.count)
        for expect in containerExpects {
            XCTAssertTrue(container.constraints.contains { $0 == expect })
        }

        XCTAssertEqual(view.constraints.count, viewExpects.count)
        for expect in viewExpects {
            XCTAssertTrue(view.constraints.contains { $0 == expect })
        }
    }
}
