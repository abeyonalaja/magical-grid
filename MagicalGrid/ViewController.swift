//
//  ViewController.swift
//  MagicalGrid
//
//  Created by Abideen Onalaja on 27/04/2017.
//  Copyright © 2017 LCP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let numViewPerRow = 15
        let width = view.frame.width / CGFloat(numViewPerRow)
        let height = view.frame.height / width
        
        for j in 0...Int(height) {
            for i in 0...numViewPerRow {
                let cellView = UIView()
                cellView.backgroundColor = randomColor()
                cellView.frame = CGRect(x: CGFloat(i) * width, y: CGFloat(j) * width, width: width, height:width)
                view.addSubview(cellView)
            }
        }
        
    }
    
    fileprivate func randomColor() -> UIColor {
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }

}

