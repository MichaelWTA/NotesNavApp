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

    var cellDetail: CellDetailModel? {
        didSet {
            refreshUI()
        }
    }

    private func refreshUI() {
        loadViewIfNeeded()
        contentLabel.text = cellDetail?.name
    }
}

extension DetailViewController: MasterSelectionDelegate {
    func cellSelected(_ newCellModel: CellDetailModel) {
        cellDetail = newCellModel
    }
}
