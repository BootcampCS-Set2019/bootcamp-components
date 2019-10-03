//
//  ViewCodableProtocol.swift
//  Components
//
//  Created by bruno.c.carvalho on 03/10/19.
//  Copyright © 2019 BootcampCS-Set2019. All rights reserved.
//

import Foundation

public protocol ViewCodable {
    func buildHierarchy()
    func buildConstraints()
    func configureAdditional()
    func setupView()
}

extension ViewCodable {
    public func setupView() {
        buildHierarchy()
        buildConstraints()
        configureAdditional()
    }
}
