//
//  ViewController.swift
//  ScalingHeaderImageViewSample
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    private lazy var tableView: UITableView = {
        let view = UITableView()
        view.delegate = self
        view.contentInsetAdjustmentBehavior = .never
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addAutoLayoutedSubview(tableView)
        NSLayoutConstraint.activate(tableView.fillConstraints())

        let headerView = StretchyTableHeaderView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 328.3333333333333))
        self.tableView.tableHeaderView = headerView
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let headerView = self.tableView.tableHeaderView as! StretchyTableHeaderView
        headerView.scrollViewDidScroll(scrollView: scrollView)
    }
}


class StretchyTableHeaderView: UIView {
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
        let offsetY = -(scrollView.contentOffset.y + scrollView.contentInset.top)
        imageView.clipsToBounds = offsetY <= 0
        imageViewBottom.constant = offsetY >= 0 ? 0 : -offsetY/2
        imageViewHeight.constant = max(offsetY + scrollView.contentInset.top, scrollView.contentInset.top)
    }
}
