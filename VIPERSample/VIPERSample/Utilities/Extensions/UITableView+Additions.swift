//
//  UITableView+Additions.swift
//  VIPERSample
//
//  Created by User on 9/3/19.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit

extension UITableView
{
    func hideEmptyCells()
    {
        self.tableFooterView = UIView()
    }
}
