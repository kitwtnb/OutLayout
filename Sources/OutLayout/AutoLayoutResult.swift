public struct _AutoLayoutResult: ViewHoldable {
    let view: View

    @MainActor
    init(view: View) {
        self.view = view
        view.translatesAutoresizingMaskIntoConstraints = false
    }
}
