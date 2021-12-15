import UIKit

class SectionHeaderView: UITableViewHeaderFooterView {
    private lazy var controlButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "controlButton"), for: .normal)
        return button
    }()
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "ミュージックタイトルです"
        return label
    }()

    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .blue


        makeConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func makeConstraints() {
        [controlButton,titleLabel].forEach {
            contentView.addAutoLayoutedSubview($0)
        }

        NSLayoutConstraint.activate([
            controlButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            controlButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            controlButton.widthAnchor.constraint(equalToConstant: 16),
            controlButton.heightAnchor.constraint(equalToConstant: 16),

            titleLabel.leadingAnchor.constraint(equalTo: controlButton.trailingAnchor, constant: 8),
            titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        ])
    }
}
