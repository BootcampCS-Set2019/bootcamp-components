//
//  Buttons.swift
//  Components
//
//  Created by bruno.c.carvalho on 08/10/19.
//  Copyright © 2019 BootcampCS-Set2019. All rights reserved.
//

import Foundation
import Resources

extension MagicDesignSystem {
    public enum Buttons {
        case bottomHorizontalLarge
        case bottomHorizontalSmall

        public func uiButton(text: String,
                             verticalOffset: CGFloat = 30,
                             horizontalOffset: CGFloat = 30,
                             referenceFrame: CGRect = UIScreen.main.bounds) -> UIButton {
            switch self {
            case .bottomHorizontalLarge:
                return setBottomHorizontalLarge(text: text,
                                                verticalOffset: verticalOffset,
                                                horizontalOffset: horizontalOffset,
                                                referenceFrame: referenceFrame)
            case .bottomHorizontalSmall:
                return setBottomHorizontalSmall(text: text,
                                                verticalOffset: verticalOffset,
                                                horizontalOffset: horizontalOffset,
                                                referenceFrame: referenceFrame)
            }
        }

        private func setBottomHorizontalLarge(text: String,
                                              verticalOffset: CGFloat,
                                              horizontalOffset: CGFloat,
                                              referenceFrame: CGRect) -> UIButton {
            let screenSize = referenceFrame.size
            let height = CGFloat(60)
            let button: UIButton =
                UIButton(frame: CGRect(x: horizontalOffset / 2,
                                       y: screenSize.height - height - verticalOffset,
                                       width: screenSize.width - horizontalOffset,
                                       height: height))
            genericButtonSettings(button: button, text: text)
            return button
        }

        private func setBottomHorizontalSmall(text: String,
                                              verticalOffset: CGFloat,
                                              horizontalOffset: CGFloat,
                                              referenceFrame: CGRect) -> UIButton {
            let screenSize = referenceFrame.size
            let height = CGFloat(35)
            let button: UIButton =
                UIButton(frame: CGRect(x: horizontalOffset / 2,
                                       y: screenSize.height - height - verticalOffset,
                                       width: screenSize.width - horizontalOffset,
                                       height: height))
            genericButtonSettings(button: button, text: text)
            return button
        }

        private func genericButtonSettings(button: UIButton, text: String) {
            button.setTitle(text, for: .normal)
            button.setTitleColor(MagicDesignSystem.Colors.whiteText, for: .normal)
            button.titleLabel?.font = MagicDesignSystem.Font.systemBold.of(size: 18)
            button.backgroundColor = MagicDesignSystem.Colors.clear
            button.layer.borderColor = UIColor.white.cgColor
            button.layer.borderWidth = 1
            button.layer.cornerRadius = 5
        }
    }
}
