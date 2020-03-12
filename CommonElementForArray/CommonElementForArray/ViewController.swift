//
//  ViewController.swift
//  CommonElementForArray
//
//  Created by amiet on 04/03/20.
//  Copyright © 2020 amiet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let colorArray = ["red","blue","red","white","blue","pink","purple"]
                print(commonValueArray(array: colorArray))
    }

    func commonValueArray(array : [String]) -> [String]
    {
        var colorDictionary : [String : Int] = [:]
        var colorArray : [String] = []
        var countArray : [String] = []
        var objectDictionary : [String : Int] = [:]
        
        for color in array
        {
            if let count = colorDictionary[color]
            {
                colorDictionary[color] = count + 1
            }else
            {
                colorDictionary[color] = 1
            }
        }
            let heightVaule = colorDictionary.values.max()
            for (color, count) in colorDictionary
            {
                if colorDictionary[color] == heightVaule
                {
                colorArray.append(color)
                countArray.append(String(count))
                objectDictionary[color] = count

                }
            }
            print(colorArray)
            print(countArray)
            print(objectDictionary)

        return colorArray
    }
}

