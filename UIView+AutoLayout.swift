//
//  UIView+AutoLayout.swift
//  ScalingHeaderImageViewSample

import UIKit

extension UIView {

    // MARK: - internal methods

    func addAutoLayoutedSubview(_ view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false

        addSubview(view)
    }

    // MARK: - NSLayoutConstraint / [NSLayoutConstraint]

    func fillConstraints() -> [NSLayoutConstraint] {
        guard let superview = self.superview else {
            assertionFailure("Failed to get a superview")
            return []
        }

        return [leadingAnchor.constraint(equalTo: superview.leadingAnchor),
                topAnchor.constraint(equalTo: superview.topAnchor),
                trailingAnchor.constraint(equalTo: superview.trailingAnchor),
                bottomAnchor.constraint(equalTo: superview.bottomAnchor)]
    }

    func fillConstraintsWithTopSafeArea() -> [NSLayoutConstraint] {
        guard let superview = self.superview else {
            assertionFailure("Failed to get a superview")
            return []
        }

        return [leadingAnchor.constraint(equalTo: superview.leadingAnchor),
                topAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.topAnchor),
                trailingAnchor.constraint(equalTo: superview.trailingAnchor),
                bottomAnchor.constraint(equalTo: superview.bottomAnchor)]
    }
}


