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

        public func uiButton(text: String,
                             verticalOffset: CGFloat = 30,
                             horizontalOffset: CGFloat = 30) -> UIButton {
            return setBottomHorizontalLarge(text: text,
                                            verticalOffset: verticalOffset,
                                            horizontalOffset: horizontalOffset)
        }

        private func setBottomHorizontalLarge(text: String,
                                              verticalOffset: CGFloat,
                                              horizontalOffset: CGFloat) -> UIButton {
            let screenSize = UIScreen.main.bounds.size
            let height = CGFloat(60)
            let button: UIButton =
                UIButton(frame: CGRect(x: horizontalOffset / 2,
                                       y: screenSize.height - height - verticalOffset,
                                       width: screenSize.width - horizontalOffset,
                                       height: height))
            button.setTitle(text, for: .normal)
            button.setTitleColor(MagicDesignSystem.Colors.whiteText, for: .normal)
            button.titleLabel?.font = MagicDesignSystem.Font.systemBold.of(size: 18)
            button.backgroundColor = MagicDesignSystem.Colors.clear
            button.layer.borderColor = UIColor.white.cgColor
            button.layer.borderWidth = 1
            button.layer.cornerRadius = 5

            return button
        }
    }
}
