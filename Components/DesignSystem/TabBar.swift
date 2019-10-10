//
//  TabBar.swift
//  Components
//
//  Created by bruno.c.carvalho on 09/10/19.
//  Copyright © 2019 BootcampCS-Set2019. All rights reserved.
//

import Foundation
import UIKit
import Resources

extension MagicDesignSystem {
    public enum TabBar {
        case normal

        public func uiTabBar(tabs: [String]) -> UITabBar {
            return setTabBar(tabs: tabs)
        }

        private func setTabBar(tabs: [String]) -> UITabBar {
            let screenSize = UIScreen.main.bounds.size
            let height = CGFloat(50)
            let tabBar = UITabBar(frame: CGRect(x: .zero,
                                                y: screenSize.height - height,
                                                width: screenSize.width,
                                                height: height))
            tabBar.backgroundColor = MagicDesignSystem.Colors.clear
            tabBar.tintColor = MagicDesignSystem.Colors.whiteText
            tabBar.barTintColor = MagicDesignSystem.Colors.clear
            tabBar.backgroundImage = UIImage()
            tabBar.isTranslucent = true

            var lineOffset: CGFloat = 30
            tabBar.addSubview(createLines(rect:
                CGRect(x: lineOffset, y: 0, width: tabBar.frame.width - lineOffset * 2, height: 1.0)))
            lineOffset = 10
            for cont in 1..<tabs.count {
                tabBar.addSubview(createLines(rect:
                    CGRect(x: CGFloat(cont) * tabBar.frame.width / CGFloat(tabs.count),
                           y: lineOffset,
                           width: 1.0,
                           height: tabBar.frame.height - lineOffset * 2)))
            }

            let textSize: CGFloat = 18
            let attributes = [
                NSAttributedString.Key.font:
                    MagicDesignSystem.Font.systemBold.of(size: textSize),
                NSAttributedString.Key.foregroundColor:
                    MagicDesignSystem.Colors.whiteText]
            let itemOffset = UIOffset(horizontal: 0, vertical: -(height / 2) + (2 * textSize / 3))

            var items: [UITabBarItem] = []
            for tab in tabs {
                let item = UITabBarItem(title: tab, image: nil, selectedImage: nil)
                item.titlePositionAdjustment = itemOffset
                item.setTitleTextAttributes(attributes, for: .normal)
                items.append(item)
            }
            tabBar.items = items

            return tabBar
        }

        private func createLines(rect: CGRect) -> UIView {
            let view = UIView(frame: rect)
            view.backgroundColor = .white
            return view
        }
    }
}
