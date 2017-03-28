//
//  ViewController.swift
//  SampleReferenceProject
//
//  Created by Sierra 4 on 22/03/17.
//  Copyright © 2017 code-brew. All rights reserved.
//

import UIKit
enum TableCellNibNames: String {
    case orderNBrowse = "FirstOrderNBrowseTableViewCell"
    case recommeded = "SecondRecommendedTableViewCell"
    case cafes = "ThirdCafesTableViewCell"
    case dineRestraurants = "FifthDineRestaurantsTableViewCell"
}


class ViewController: UIViewController {

    @IBOutlet weak var tableViewMain: UITableView!
    @IBOutlet weak var viewFooter: UIView!
    @IBOutlet weak var viewHeader: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var nibNames = ""
        switch (indexPath.row) {
        case 0:
            nibNames = TableCellNibNames.orderNBrowse.rawValue
            let cell = Bundle.main.loadNibNamed(nibNames, owner: self, options: nil)?.first as! FirstOrderNBrowseTableViewCell
            
            return cell
        case 1:
            nibNames = TableCellNibNames.recommeded.rawValue
            let cell = Bundle.main.loadNibNamed(nibNames, owner: self, options: nil)?.first as! SecondRecommendedTableViewCell
            return cell
        case 2:
            nibNames = TableCellNibNames.cafes.rawValue
            let cell = Bundle.main.loadNibNamed(nibNames, owner: self, options: nil)?.first as! ThirdCafesTableViewCell
            return cell
        case 3:
            nibNames = TableCellNibNames.cafes.rawValue
            let cell = Bundle.main.loadNibNamed(nibNames, owner: self, options: nil)?.first as! ThirdCafesTableViewCell
            return cell
        case 4:
            nibNames = TableCellNibNames.dineRestraurants.rawValue
            let cell = Bundle.main.loadNibNamed(nibNames, owner: self, options: nil)?.first as! FifthDineRestaurantsTableViewCell
            
            return cell
        case 5:
            nibNames = TableCellNibNames.dineRestraurants.rawValue
            let cell = Bundle.main.loadNibNamed(nibNames, owner: self, options: nil)?.first as! FifthDineRestaurantsTableViewCell
            
            return cell
        default:
            nibNames = TableCellNibNames.orderNBrowse.rawValue
            let cell = Bundle.main.loadNibNamed(nibNames, owner: self, options: nil)?.first as! FirstOrderNBrowseTableViewCell
            
            return cell
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch (indexPath.row) {
        case 0:
            return 100
        case 1:
            //return UITableViewAutomaticDimension
            return 300
        case 2:
            return 400
        case 3:
            return 400
        case 4:
            return 300
        case 5:
            return 300
        default:
            return 120
        }
        //return UITableViewAutomaticDimension
    }
//    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableViewAutomaticDimension
//    }
}

