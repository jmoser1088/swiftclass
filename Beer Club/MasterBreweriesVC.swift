//
//  MasterBreweries.swift
//  Beer Club
//
//  Created by Admin on 12/12/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

enum FoundState {
    case found
    case lost
}

class MasterBreweriesVC: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var findItButton: UIButton!
    
    @IBOutlet weak var birdsongBreweryView: UIView!
    @IBOutlet weak var nodaBreweryView: UIView!
    @IBOutlet weak var ombBreweryView: UIView!
    @IBOutlet weak var tripleCBreweryView: UIView!
    
    let breweries = BreweryList().breweries
    
    let buttonText = "Find It!"
    var isFound = false
    var state: FoundState = .lost
    let breweryDetailSegue = "BreweryDetailSegue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Master Breweries"
        
        let breweryViews = [birdsongBreweryView, nodaBreweryView, ombBreweryView, tripleCBreweryView]
        
        for index in 0..<breweryViews.count {
            let brewery = breweries[index]
            for subview in breweryViews[index]?.subviews ?? [] { //[Subviews] = imageView & label
                if let label = subview as? UILabel {
                    label.text = brewery.name
                }
                if let logo = subview as? UIImageView {
                    logo.image = UIImage(named: brewery.logo)
                }
            }
            breweryViews[index]?.tag = index
        }

        /*
        // Do any additional setup after loading the view.
        topLabel.text = "I once was lost..."
        topLabel.textColor = .red
        //make topLabel text red
        bottomLabel.text = "...but now I am found."
        bottomLabel.textColor = .white
        //make bottomLabel text white
        findItButton.setTitle("Find it!", for: .normal) //.normal is a case of an enum
        bottomLabel.isHidden = true
        state = .lost
        
        //make our view background gray
        self.view.backgroundColor = UIColor.gray
        */
    }
    
    //MARK: -Actions
    
    @IBAction func showBreweryDetail(_ sender: Any) {
        performSegue(withIdentifier: breweryDetailSegue, sender: sender)
    }
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == breweryDetailSegue {
            let breweryDetailVC = segue.destination as! BreweryDetailVC
            let breweryButton = (sender! as AnyObject).view as UIView
            breweryDetailVC.breweryIndex = breweryButton.tag
        }
      
    }
 

}
