//
//  DetailViewController.swift
//  NotesNavApp
//
//  Created by Michael P on 8/30/19.
//  Copyright © 2019 Michael P. All rights reserved.
//

import Foundation
import UIKit

final class DetailViewController: UIViewController {
    @IBOutlet weak var contentLabel: UILabel!

    var tool: Tool? {
        didSet {
            refreshUI()
        }
    }

    private func refreshUI() {
        loadViewIfNeeded()
        contentLabel.text = tool?.name
    }
}

extension DetailViewController: ToolSelectionDelegate {
    func toolSelected(_ newTool: Tool) {
        tool = newTool
    }
}
