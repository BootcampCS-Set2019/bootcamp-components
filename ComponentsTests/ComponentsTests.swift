//
//  ComponentsTests.swift
//  ComponentsTests
//
//  Created by matheus.filipe.bispo on 02/10/19.
//  Copyright © 2019 BootcampCS-Set2019. All rights reserved.
//

import Quick
import Nimble
import Resources
@testable import Components

class ComponentsTests: QuickSpec {
    override func spec() {
        describe("SearchBar") {
            it("has to match snapshot") {
                let component: UISearchBar = MagicDesignSystem.SearchBar.searchCards
                    .uiSearchBar(placeholder: "Search for cards")
                //expect(component).to(recordSnapshot())
            }
        }

        describe("Labels") {
            describe("TitleLabel") {
                it("has to match snapshot") {
                    let component: UILabel = MagicDesignSystem.Labels.titleLabel
                        .uiLabel(frame: CGRect(origin: .zero, size: CGSize(width: 200, height: 50)))
                    component.text = "Deck name"
                    //expect(component).to(recordSnapshot())
                }
            }
            describe("SubtitleLabel") {
                it("has to match snapshot") {
                    let component: UILabel = MagicDesignSystem.Labels.subtitleLabel
                        .uiLabel(frame: CGRect(origin: .zero, size: CGSize(width: 200, height: 50)))
                    component.text = "Type name"
                    //expect(component).to(recordSnapshot())
                }
            }
        }

        describe("Buttons") {
            it("has to match snapshot") {
                let component: UIButton = MagicDesignSystem.Buttons.bottomHorizontalLarge
                    .uiButton(text: "Add card")
                //expect(component).to(recordSnapshot())
            }
        }
    }
}
