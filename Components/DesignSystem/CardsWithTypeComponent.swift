//
//  CardsWithTypeComponent.swift
//  Components
//
//  Created by bruno.c.carvalho on 03/10/19.
//  Copyright © 2019 BootcampCS-Set2019. All rights reserved.
//

import Foundation
import UIKit
import Resources

extension MagicDesignSystem {
    public class CardsWithTypeComponent: UIStackView {

        private let cardsType: UILabel = {
            return MagicDesignSystem.Labels.subtitleLabel
        }()

        private let cardsCollection: UICollectionView = {
            let collection = UICollectionView()
            return collection
        }()

        override init(frame: CGRect) {
            super.init(frame: frame)

            self.axis = .vertical
            self.distribution = .equalSpacing
            self.alignment = .leading
            self.spacing = 30
        }

        required init(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
}

extension MagicDesignSystem.CardsWithTypeComponent: ViewCodable {
    func buildHierarchy() {
        
    }
    
    func buildConstraints() {
        
    }
    
    func configureAdditional() {
        
    }
}
