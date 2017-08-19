//
//  ViewController.swift
//  PageTheScroll
//
//  Created by jamespoyu on 2017/8/17.
//  Copyright © 2017年 Devslopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //get our storyboard reading our scrollView setup .talking from our stroyboard to our our code with IBoutlet
    @IBOutlet weak var scrollView: UIScrollView!
    
    var images = [UIImageView]()//create an array of images and then we are going to get an empty array like so
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var contentWidth :CGFloat = 0.0
       //Create images from those images here is our viewDidLoad
        print("ScrollView Width:\(scrollView.frame.size.width)")
        
        let scrollWidth = scrollView.frame.size.width
        
        for x in 0...2{
        let image = UIImage(named: "icon\(x).png") //go through three times and create images..
            let imageView = UIImageView(image: image)
            images.append(imageView) //create the images and stick in to array..
            var newX : CGFloat = 0.0 // just start with
            newX = scrollWidth/2 + scrollWidth * CGFloat(x)//get the position of the view(screen) that we need
            contentWidth += newX
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX-75, y: (scrollView.frame.size.height/2)-75, width: 150, height: 150)
            
        }
//        scrollView.backgroundColor = UIColor.purple
        scrollView.clipsToBounds = false //we don't want scrollView to clip what's  behind it , we want to show it
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }

    

}

