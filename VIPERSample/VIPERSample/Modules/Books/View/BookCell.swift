//
//  BookCell.swift
//  VIPERSample
//
//  Created by User on 9/3/19.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit
import Reusable

class BookCell: UITableViewCell, Reusable
{
    // MARK: Outlets
    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    // MARK: Setups
    func setupBook(_ book: Book)
    {
        coverImageView.image = UIImage(named: book.cover)
        nameLabel.text = book.name
        authorLabel.text = "\(book.author) - \(book.year)"
    }
}
