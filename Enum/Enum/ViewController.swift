//
//  ViewController.swift
//  Enum
//
//  Created by amiet on 09/03/20.
//  Copyright © 2020 amiet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    enum College
    {
        case studentName
        case collegeName
        case id
    }
    
    
    enum WeatherType
    {
        case sun
        case cloud
        case rain
        case wind
        case snow
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       print(getHaterStatus(weather: .cloud))
        print(withoutType)
    }

    func getHaterStatus(weather : WeatherType) -> String
    {
        switch weather
         {
        case .sun:
            return "Sun"
        case .cloud, .snow:
            return "snow"
        case .rain:
            return "rain"
        case .wind:
            return "wind"
        }
    }
    
    func withoutType()
    {
        let collegeDetail = College.collegeName
        print(collegeDetail)
    }
    
}

