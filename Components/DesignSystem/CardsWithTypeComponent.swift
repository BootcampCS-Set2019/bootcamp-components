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

        public struct ViewModel {
            var typeTitle: String
            var cardImages: [UIImage]
        }
        
        public var viewModel: ViewModel? {
            didSet {
                setupView()
            }
        }
        
        private let cardsType: UILabel = {
            return MagicDesignSystem.Labels.subtitleLabel
        }()

        private let cardsCollection: UICollectionView = {
            let collection = UICollectionView()
            return collection
        }()

        public override init(frame: CGRect) {
            super.init(frame: frame)

            self.axis = .vertical
            self.distribution = .equalSpacing
            self.alignment = .leading
            self.spacing = 30

            cardsCollection.dataSource = self
        }

        required init(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        private func applyViewModel() {
            self.cardsType.text = self.viewModel?.typeTitle
            self.cardsCollection.reloadData()
        }
    }
}

extension MagicDesignSystem.CardsWithTypeComponent: ViewCodable {
    public func buildHierarchy() {
        self.addSubview(cardsType)
        self.addSubview(cardsCollection)
    }

    public func buildConstraints() {
        cardsType.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        cardsType.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        cardsType.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        cardsType.heightAnchor.constraint(equalToConstant: 60).isActive = true

        cardsCollection.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        cardsCollection.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        cardsCollection.topAnchor.constraint(equalTo: cardsType.topAnchor, constant: 10).isActive = true
        cardsCollection.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }

    public func configureAdditional() {

    }
}

//extension MagicDesignSystem.CardsWithTypeComponent: UICollectionViewDataSource {
//    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return viewModel?.cardImages.count ?? 0
//    }
//    
//    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let reusable = collectionView.dequeueReusableCell(withReuseIdentifier: "", for: indexPath)
//        let cell =
//    }
//    
//    
//}
