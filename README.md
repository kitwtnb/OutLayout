# OutLayout

OutLayout is a lightweight wrapper for AutoLayout.  
It prevents locking in libraries and allows for easy reverting to plain AutoLayout descriptions when no longer needed.

## Usage

```swift
import OutLayout

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let backgroundView = UIView()
        backgroundView.backgroundColor = .yellow
        view.addSubview(backgroundView)

        let view1 = UIView()
        view1.backgroundColor = .red
        view.addSubview(view1)

        let view2 = UIView()
        view2.backgroundColor = .blue
        view.addSubview(view2)

        let view3 = UIView()
        view3.backgroundColor = .purple
        view.addSubview(view3)

        // Use OutLayout
        backgroundView
            .top(to: view)
            .leading(to: view)
            .trailing(to: view)
            .bottom(to: view)

        view1
            .top(to: view, safeArea: true)
            .leading(to: view, constant: 20)
            .width(constant: 100)
            .height(constant: 100)

        view2
            .centerX(to: view1.trailingAnchor)
            .centerY(to: view1.bottomAnchor)
            .width(to: view1)
            .height(constant: 50)

        view3
            .centerX(to: view)
            .centerY(to: view)
            .width(to: view2)
            .height(to: view2)
   }
}
```

<img src=./doc/image/usage.png alt="usage" width="320">

## Installation

### Swift Package Manager
Add https://github.com/kitwtnb/OutLayout as a dependency.
