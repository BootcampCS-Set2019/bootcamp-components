//
//  SearchBar.swift
//  Components
//
//  Created by bruno.c.carvalho on 08/10/19.
//  Copyright © 2019 BootcampCS-Set2019. All rights reserved.
//

import Foundation
import UIKit
import Resources

extension MagicDesignSystem {
    public enum SearchBar {
        case searchCardsHorizontalLarge

        public func uiSearchBar(horizontalOffset: CGFloat = 30,
                                verticalOffset: CGFloat = 50,
                                placeholder: String? = nil) -> UISearchBar {
            return setSearchCardsHorizontalLarge(horizontalOffset: horizontalOffset,
                                                 verticalOffset: verticalOffset,
                                                 placeholder: placeholder)
        }

        private func setSearchCardsHorizontalLarge(horizontalOffset: CGFloat,
                                                   verticalOffset: CGFloat,
                                                   placeholder: String?) -> UISearchBar {
            let screenSize = UIScreen.main.bounds.size
            let height = CGFloat(45)
            let searchBar: UISearchBar = UISearchBar(frame: CGRect(x: horizontalOffset / 2,
                                                                   y: verticalOffset,
                                                                   width: screenSize.width - horizontalOffset,
                                                                   height: height))
            searchBar.backgroundColor = MagicDesignSystem.Colors.clear
            searchBar.tintColor = MagicDesignSystem.Colors.whiteText
            searchBar.isTranslucent = true
            searchBar.setBackgroundImage(UIImage(), for: .any, barMetrics: .default)

            let cancelButton = searchBar.value(forKey: "cancelButton") as? UIButton
            cancelButton?.setTitleColor(
                MagicDesignSystem.Colors.whiteText,
                for: .normal)

            if let textField = searchBar.value(forKey: "searchField") as? UITextField {
                textField.textColor = MagicDesignSystem.Colors.whiteText
                textField.backgroundColor = MagicDesignSystem.Colors.clear
                textField.layer.borderColor = UIColor.white.cgColor
                textField.layer.borderWidth = 1
                textField.layer.cornerRadius = 5
                if let placeholderString = placeholder {
                    textField.attributedPlaceholder = createMutableAttributedString(placeholderString)
                }
            }

//            let glassImageView = UIImageView(frame: CGRect(x: -40, y: 0, width: 15, height: 15))
//            glassImageView.image = MagicDesignSystem.Assets.closeButton
//            textField?.rightView = glassImageView
//            textField?.rightViewMode = .unlessEditing
            //textField?.leftViewMode = .never

            return searchBar
        }

        private func createMutableAttributedString(_ string: String) -> NSMutableAttributedString {
            let attributedString = NSMutableAttributedString(string: string)
            let range = NSRange(location: 0, length: attributedString.string.count)
            attributedString
                .addAttribute(NSAttributedString.Key.font,
                              value: MagicDesignSystem.Font.systemBold.of(size: 16),
                              range: range)
            attributedString
                .addAttribute(NSAttributedString.Key.foregroundColor,
                              value: MagicDesignSystem.Colors.whiteText,
                              range: range)
            return attributedString
        }
    }
}
