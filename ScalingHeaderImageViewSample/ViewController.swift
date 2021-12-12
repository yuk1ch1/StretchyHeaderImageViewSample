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

        let headerView = StretchyTableHeaderView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 250))
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
    private var containerViewHeight = NSLayoutConstraint()

    private lazy var containerView: UIView = {
        let view = UIView()
        return view
    }()

    private lazy var imageView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "headerImage"))
        view.clipsToBounds = true
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

        self.addAutoLayoutedSubview(containerView)
        NSLayoutConstraint.activate([
            self.widthAnchor.constraint(equalTo: containerView.widthAnchor),
            self.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            self.heightAnchor.constraint(equalTo: containerView.heightAnchor)
        ])

        containerView.addAutoLayoutedSubview(imageView)
        containerViewHeight = containerView.heightAnchor.constraint(equalTo: self.heightAnchor)
        imageViewBottom = imageView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
        imageViewHeight = imageView.heightAnchor.constraint(equalTo: containerView.heightAnchor)

        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: self.topAnchor),
            containerView.widthAnchor.constraint(equalTo: imageView.widthAnchor),
            containerViewHeight,
            imageView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            imageViewBottom,
            imageViewHeight,
        ])
    }

    func scrollViewDidScroll(scrollView: UIScrollView) {
        containerViewHeight.constant = scrollView.contentInset.top
        let offsetY = -(scrollView.contentOffset.y + scrollView.contentInset.top)
        containerView.clipsToBounds = offsetY <= 0
        imageViewBottom.constant = offsetY >= 0 ? 0 : -offsetY / 2
        imageViewHeight.constant = max(offsetY + scrollView.contentInset.top, scrollView.contentInset.top)
    }
}
