//
//  ToolsTableViewController.swift
//  NotesNavApp
//
//  Created by Michael P on 8/30/19.
//  Copyright © 2019 Michael P. All rights reserved.
//

import Foundation
import UIKit

protocol ToolSelectionDelegate: class {
    func toolSelected(_ newTool: Tool)
}

final class ToolsTableViewController: UITableViewController {

    weak var delegate: ToolSelectionDelegate?

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
        delegate?.toolSelected(selectedTool)

        if let detailViewController = delegate as? DetailViewController {
            splitViewController?.showDetailViewController(detailViewController, sender: nil)
        }
    }
}
