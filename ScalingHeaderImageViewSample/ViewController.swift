//
//  ViewController.swift
//  ScalingHeaderImageViewSample
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    private lazy var tableView: UITableView = {
        let view = UITableView()
        view.delegate = self
        view.dataSource = self
        view.contentInsetAdjustmentBehavior = .never
        view.register(SectionHeaderView.self, forHeaderFooterViewReuseIdentifier: "SectionHeader")
        view.register(ContentCell.self, forCellReuseIdentifier: "Cell")
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        makeConstraints()
    }

    private func makeConstraints() {
        view.addAutoLayoutedSubview(tableView)
        NSLayoutConstraint.activate(tableView.fillConstraintsWithTopSafeArea())
    }

    private func setupTableView() {
        let headerView = StretchyTableHeaderView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: StretchyTableHeaderView.imageHeihgt))
        self.tableView.tableHeaderView = headerView
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? ContentCell else {
            fatalError("Failed To get a CustomCell")
            return UITableViewCell() }
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let sectionHeader = tableView.dequeueReusableHeaderFooterView(withIdentifier: "SectionHeader") as? SectionHeaderView
        return sectionHeader
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let headerView = self.tableView.tableHeaderView as! StretchyTableHeaderView
        headerView.scrollViewDidScroll(scrollView: scrollView)
    }
}
