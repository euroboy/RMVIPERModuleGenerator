//
//  GenreCell.swift
//  VIPERSample
//
//  Created by User on 9/3/19.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit
import Reusable

class GenreCell: UITableViewCell, Reusable
{
    // MARK: Outlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    
    // MARK: Setups
    func setupGenre(_ genre: Genre)
    {
        nameLabel.text = genre.name
        detailsLabel.text = genre.detail
    }
}
