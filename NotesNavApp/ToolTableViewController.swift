//
//  ToolTableViewController.swift
//  NotesNavApp
//
//  Created by Michael P on 8/30/19.
//  Copyright © 2019 Michael P. All rights reserved.
//

import Foundation
import UIKit

protocol MasterSelectionDelegate: class {
    func cellSelected(_ newCellDetail: CellDetailModel)
}

final class ToolTableViewController: UITableViewController {

    weak var delegate: MasterSelectionDelegate?

    let tools = [
        Tool.kpi,
        Tool.orders
    ]

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tools.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = tools[indexPath.row].name
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedTool = tools[indexPath.row]
        delegate?.cellSelected(selectedTool)

        if
            let detailViewController = delegate as? DetailViewController,
            let detailNavigationController = detailViewController.navigationController
        {
            splitViewController?.showDetailViewController(detailNavigationController, sender: nil)
        }
    }
}
