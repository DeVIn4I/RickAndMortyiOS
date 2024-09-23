//
//  RMTabBarController.swift
//  RickAndMorty
//
//  Created by Razumov Pavel on 23.09.2024.
//

import UIKit

final class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setUpTabs()
    }
    
    private func setUpTabs() {
        let charactersVC = createNavController(
            rootVC: RMCharactersViewController(),
            title: "Characters",
            image: UIImage(systemName: "person")
        )
        let locationsVC = createNavController(
            rootVC: RMLocationsViewController(),
            title: "Locations",
            image: UIImage(systemName: "globe")
        )
        let episodesVC = createNavController(
            rootVC: RMEpisodesViewController(),
            title: "Episodes",
            image: UIImage(systemName: "tv")
        )
        let settingsVC = createNavController(
            rootVC: RMSettingsViewController(),
            title: "Settings",
            image: UIImage(systemName: "gear")
        )
        setViewControllers([charactersVC, locationsVC, episodesVC, settingsVC], animated: true)
    }
    
    private func createNavController(
        rootVC: UIViewController,
        title: String,
        image: UIImage?
    ) -> UINavigationController {
        let navController = UINavigationController(rootViewController: rootVC)
        rootVC.navigationItem.title = title
        rootVC.view.backgroundColor = .systemBackground
        rootVC.navigationItem.largeTitleDisplayMode = .automatic
        navController.navigationBar.prefersLargeTitles = true
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        return navController
    }
}

