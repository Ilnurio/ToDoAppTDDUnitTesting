//
//  TaskCellTableViewCell.swift
//  ToDoAppTDDUnitTesting
//
//  Created by Ilnur on 27.09.2023.
//

import UIKit

class TaskCell: UITableViewCell {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    func configure(withTask task: Task) {
        
    }
}
