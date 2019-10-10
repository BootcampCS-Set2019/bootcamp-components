//
//  ErrorState.swift
//  Components
//
//  Created by bruno.c.carvalho on 10/10/19.
//  Copyright © 2019 BootcampCS-Set2019. All rights reserved.
//

import Foundation
import Resources

extension MagicDesignSystem {
    public class ErrorState {
        lazy public var errorView: UIView = { [weak self] in
            guard let selfWeak = self else {
                return UIView()
            }
            let view = selfWeak.setErrorView()
            selfWeak.buildView(view)
            return view
        }()
        lazy public var messageLabel: UILabel = { [weak self] in
            return setMessage(text: (self?.message)!)
        }()
        lazy public var buttonRetry: UIButton? = { [weak self] in
            return setButton(text: (self?.buttonText)!)
        }()

        private var message: String
        private var buttonText: String?

        private let screenSize = UIScreen.main.bounds.size
        private let horizontalOffset: CGFloat = 30
        private let height: CGFloat = 200
        lazy private var rect: CGRect = CGRect(x: horizontalOffset,
                                          y: screenSize.height / 2 - height / 2,
                                          width: screenSize.width - horizontalOffset * 2,
                                          height: height)

        public init(message: String, buttonText: String?) {
            self.message = message
            self.buttonText = buttonText
        }

        private func setErrorView() -> UIView {
            let view = UIView(frame: rect)
            view.backgroundColor = .clear
            return view
        }

        private func setMessage(text: String) -> UILabel {
            let label = MagicDesignSystem.Labels.titleLabel
                .uiLabel(frame: CGRect(x: 0, y: 0, width: screenSize.width - horizontalOffset * 2, height: 150))
            label.text = text
            label.textAlignment = .center
            label.font = MagicDesignSystem.Font.systemBold.of(size: 18)
            return label
        }

        private func setButton(text: String) -> UIButton {
            let button = MagicDesignSystem.Buttons.bottomHorizontalSmall
                .uiButton(text: text, horizontalOffset: 150, referenceFrame: self.rect)
            return button
        }

        private func buildView(_ view: UIView) {
            view.addSubview(self.messageLabel)
            if let button = buttonRetry {
                view.addSubview(button)
            }
        }
    }
}
