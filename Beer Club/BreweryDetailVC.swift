//
//  BreweryDetailVC.swift
//  Beer Club
//
//  Created by Admin on 12/12/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class BreweryDetailVC: UIViewController {
    
    @IBOutlet weak var imageOutlet: UIImageView!
    @IBOutlet weak var breweryName: UILabel!
    @IBOutlet weak var tourInformation: UILabel!
    @IBOutlet weak var breweryDescription: UILabel!
    
    let breweryList = BreweryList() //reference to brewery struct we made on Brewery.swift file
    var breweryIndex: Int = 0
    var brewery: Brewery =   Brewery(id: 1, name: "Birdsong", logo: "birdsong.png", description: "Birdsong Brewing was founded in 2011 by a group of friends who share a love for both great beer and great people. We started with a five-gallon soup kettle and a vision inspired by some of our favorite craft breweries. The idea was simple: brew flavorful, unfiltered quality craft beer and bring that to Charlotte, NC.", tourTime: "Thursdays at 6:30pm", addressLink: "http://maps.apple.com/?address=1016,North+Davidson+Street,Charlotte,North+Carolina")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        brewery = breweryList.breweries[breweryIndex]
        self.navigationItem.title = "Brewery Details"
        self.title = brewery.name
        breweryName.text = brewery.name
        tourInformation.text = brewery.tourTime
        breweryDescription.text = brewery.description
        imageOutlet.image = UIImage(named: brewery.logo)
        
        // Do any additional setup after loading the view.
    }
    @IBAction func addressButton(_ sender: Any) {
        if let url = URL(string: brewery.addressLink) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    

}
