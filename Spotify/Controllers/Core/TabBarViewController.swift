//
//  TabBarViewController.swift
//  Spotify
//
//  Created by Айдана on 02.06.2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewController1 = HomeViewController()
        let viewController2 = SearchViewController()
        let viewController3 = LibraryViewController()
        
        viewController1.title = "Browse"
        viewController2.title = "Search"
        viewController3.title = "Library"
        
        viewController1.navigationItem.largeTitleDisplayMode = .always
        viewController2.navigationItem.largeTitleDisplayMode = .always
        viewController3.navigationItem.largeTitleDisplayMode = .always
        
        let navigationController1 = UINavigationController(rootViewController: viewController1)
        let navigationController2 = UINavigationController(rootViewController: viewController2)
        let navigationController3 = UINavigationController(rootViewController: viewController3)
        
        navigationController1.navigationBar.tintColor = .label
        navigationController2.navigationBar.tintColor = .label
        navigationController3.navigationBar.tintColor = .label
        
        navigationController1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        navigationController2.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        navigationController3.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "music.note.list"), tag: 1)
        
        navigationController1.navigationBar.prefersLargeTitles = true
        navigationController2.navigationBar.prefersLargeTitles = true
        navigationController3.navigationBar.prefersLargeTitles = true
        
        setViewControllers([navigationController1, navigationController2, navigationController3], animated: false)
    }
}
