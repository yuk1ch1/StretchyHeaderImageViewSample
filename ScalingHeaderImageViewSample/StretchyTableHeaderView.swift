import UIKit

class StretchyTableHeaderView: UIView {
    static let imageHeihgt = 328.3333333333333
    private var imageViewHeight = NSLayoutConstraint()
    private var imageViewBottom = NSLayoutConstraint()

    private lazy var imageView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "headerImage"))
        view.backgroundColor = .yellow
        view.contentMode = .scaleAspectFill
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        setConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    func setConstraints() {
        self.addAutoLayoutedSubview(imageView)
        imageViewBottom = imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        imageViewHeight = imageView.heightAnchor.constraint(equalTo: self.heightAnchor)

        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imageViewBottom,
            imageViewHeight,
        ])
    }

    func scrollViewDidScroll(scrollView: UIScrollView) {
        imageViewHeight.constant = scrollView.contentInset.top
        let offsetY = -(scrollView.contentOffset.y + scrollView.contentInset.top)
        imageView.clipsToBounds = offsetY <= 0
        imageViewBottom.constant = offsetY >= 0 ? 0 : -offsetY/4.7
        imageViewHeight.constant = max(offsetY + scrollView.contentInset.top, scrollView.contentInset.top)
    }
}
