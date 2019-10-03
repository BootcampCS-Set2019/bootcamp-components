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
    public class Labels {
        private init() { }

        public static let titleLabel: UILabel = setTitleLabel()
        public static let subtitleLabel: UILabel = setSubtitleLabel()

        private static func setTitleLabel() -> UILabel {
            let label: UILabel = UILabel(frame: CGRect.zero)
            return label
        }

        private static func setSubtitleLabel() -> UILabel {
            let label: UILabel = UILabel(frame: CGRect.zero)
            return label
        }

    }
}
