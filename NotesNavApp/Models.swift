//
//  Models.swift
//  NotesNavApp
//
//  Created by Michael P on 8/30/19.
//  Copyright © 2019 Michael P. All rights reserved.
//

import Foundation
import UIKit

// is the model for both a cell and the detail view of that cell
protocol CellDetailModel {
    var name: String { get }
}

enum Tool: CellDetailModel {
    case kpi
    case orders

    var name: String {
        switch self {
        case .kpi:
            return "KPI"
        case .orders:
            return "Orders"
        }
    }
}

enum Account: CellDetailModel {
    case store
    case gasStation

    var name: String {
        switch self {
        case .store:
            return "Store"
        case .gasStation:
            return "Gas Station"
        }
    }
}

enum AccountTab {
    case overview
    case contacts
}
