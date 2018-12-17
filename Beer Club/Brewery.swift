//
//  Brewery.swift
//  Beer Club
//
//  Created by Admin on 12/13/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

struct Brewery {
    let  id: Int
    let name: String
    let logo: String
    let description: String
    let tourTime: String
    let addressLink: String
}

struct BreweryList {
    let breweries = [
        Brewery(id: 1, name: "Birdsong", logo: "birdsong.png", description: "Birdsong Brewing was founded in 2011 by a group of friends who share a love for both great beer and great people. We started with a five-gallon soup kettle and a vision inspired by some of our favorite craft breweries. The idea was simple: brew flavorful, unfiltered quality craft beer and bring that to Charlotte, NC.", tourTime: "Thursdays at 6:30pm", addressLink: "http://maps.apple.com/?address=1016,North+Davidson+Street,Charlotte,North+Carolina"),
        Brewery(id: 2, name: "NoDa Brewing Co.", logo: "noda.png", description: "NoDa Brewing Company opened its doors to the world on October 29, 2011 as a production brewery and on-site tap room. In addition to the tap room where we sell pints & growlers, we offer brewery tours and have enough space for special events, live music and other forms of entertainment & activities.", tourTime: "Coming Soon in 2016!", addressLink: "http://maps.apple.com/?address=2921,North+Tryon+Street,Charlotte,North+Carolina"),
        Brewery(id: 3, name: "The Olde Mecklenburg Brewery", logo: "omb.png", description: "In March 2009, The Olde Mecklenburg Brewery opened its doors, at the time Charlotte’s only local brewery. Charlotteans embraced it with a bear hug (that was the authentic German beer talking) and OMB started to build a dedicated following that’s never really stopped growing.", tourTime: "Sat. and Sun. at 2,3,and 4.", addressLink: "http://maps.apple.com/?address=4150,Yancey+Road,Charlotte,North+Carolina"),
        Brewery(id: 4, name: "Triple C Brewing Co.", logo: "triple_c.png", description: "A floor-to-ceiling wall of glass separates patrons from the brewmaster at this dog-friendly South End taproom pouring its signature and seasonal IPAs, pale ales, porters and more. Plenty of TVs, lots of seating and Ping-Pong and foosball tables up its hangout quotient, and the modern digs also include a large patio.", tourTime: "Thursdays at 6:30pm", addressLink: "http://maps.apple.com/?address=2900,Griffith+Street,Charlotte,North+Carolina")
    ]
}
