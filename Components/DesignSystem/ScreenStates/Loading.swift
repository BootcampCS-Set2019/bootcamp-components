//
//  Loading.swift
//  Components
//
//  Created by bruno.c.carvalho on 10/10/19.
//  Copyright © 2019 BootcampCS-Set2019. All rights reserved.
//

import Foundation
import Resources

extension MagicDesignSystem {
    public enum Loading {
        case activityIndicator
        
        public func uiActiviteIndicator() -> UIActivityIndicatorView {
            let screenSize = UIScreen.main.bounds.size
            let size: CGFloat = 50
            let loading = UIActivityIndicatorView(frame:
                CGRect(x: screenSize.width / 2 - size / 2,
                       y: screenSize.height / 2 - size / 2,
                       width: size,
                       height: size))
            loading.style = UIActivityIndicatorView.Style.whiteLarge
            return loading
        }
    }
}
