//
//  ViewController.swift
//  Sample
//
//  Created by matheus.filipe.bispo on 02/10/19.
//  Copyright © 2019 BootcampCS-Set2019. All rights reserved.
//

import UIKit
import Components
import Resources

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .black

        let searchBar = MagicDesignSystem.SearchBar.searchCardsHorizontalLarge
            .uiSearchBar(placeholder: "Search for cards")
        self.view.addSubview(searchBar)
        searchBar.delegate = self

//        let button = MagicDesignSystem.Buttons.bottomHorizontalLarge.uiButton(text: "Add Card")
//        self.view.addSubview(button)

        let tabBar = MagicDesignSystem.TabBar.normal.uiTabBar(tabs: ["Sets"])
        self.view.addSubview(tabBar)

        let loading = MagicDesignSystem.Loading.activityIndicator.uiActiviteIndicator()
        self.view.addSubview(loading)
        loading.startAnimating()

//        let error = MagicDesignSystem.ErrorState(message: "Deu ruim", buttonText: "Recarregar").errorView
//        self.view.addSubview(error)
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchBar.setShowsCancelButton(true, animated: true)
    }

    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.text = ""
        searchBar.setShowsCancelButton(false, animated: true)
        searchBar.resignFirstResponder()
    }

    func searchBarShouldEndEditing(_ searchBar: UISearchBar) -> Bool {
        searchBar.setShowsCancelButton(false, animated: true)
        return true
    }
}
