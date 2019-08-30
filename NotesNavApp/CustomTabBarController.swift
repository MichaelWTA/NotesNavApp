//
//  CustomTabBarController.swift
//  NotesNavApp
//
//  Created by Michael P on 8/30/19.
//  Copyright © 2019 Michael P. All rights reserved.
//

import Foundation
import UIKit

final class CustomTabBarController: UIViewController, UITabBarDelegate {

    @IBOutlet weak var tab1View: UIView!
    @IBOutlet weak var tab2View: UIView!
    @IBOutlet weak var tabBar: UITabBar!

    override func viewDidLoad() {
        tabBar.delegate = self
    }

    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        tab1View.isHidden = item.tag != 1
        tab2View.isHidden = item.tag != 2
    }
}
