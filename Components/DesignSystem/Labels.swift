//
//  Labels.swift
//  Components
//
//  Created by bruno.c.carvalho on 03/10/19.
//  Copyright © 2019 BootcampCS-Set2019. All rights reserved.
//

import Foundation
import UIKit
import Resources

extension MagicDesignSystem {
    public enum Labels {
        case titleLabel
        case subtitleLabel

        public func uiLabel(frame: CGRect) -> UILabel {
            switch self {
            case .titleLabel:
                return setTitleLabel(frame: frame)
            case .subtitleLabel:
                return setSubtitleLabel(frame: frame)
            }
        }

        private func setTitleLabel(frame: CGRect) -> UILabel {
            let label: UILabel = UILabel(frame: frame)
            label.textColor = MagicDesignSystem.Colors.whiteText
            label.font = MagicDesignSystem.Font.systemBold.of(size: 24)
            return label
        }

        private func setSubtitleLabel(frame: CGRect) -> UILabel {
            let label: UILabel = UILabel(frame: frame)
            label.textColor = MagicDesignSystem.Colors.grayLabel
            label.font = MagicDesignSystem.Font.systemBold.of(size: 16)
            return label
        }
    }
}
