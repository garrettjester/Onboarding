//
//  ViewController.swift
//  ScrollingView
//
//  Created by Gillian Reynolds-Titko on 7/6/17.
//  Copyright © 2018 WRLDS. All rights reserved.
//

//This example application sets up a scroll view that you can scroll through, page-by-page
//The exmple uses autolayout, scrollviews and a paging feature (page indicator).
//Inspiration: Team Treehouse: Introduction to ScrollViews with Swift 2
// https://teamtreehouse.com/library/introduction-to-scroll-views-with-swift-2

//Autolayout: The scrollview is pinned to all the edges of the view
import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    
    @IBOutlet weak var rollView: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        scrollView.alwaysBounceHorizontal = false
        scrollView.alwaysBounceVertical = false
        scrollView.isDirectionalLockEnabled = true
        scrollView.isPagingEnabled = true
        scrollView.delegate = self //set the ScrollView's delegate to the VC
        let image = UIImage(named: "pexels-photo-30360")
        scrollView.contentSize = image!.size //Set the content size of the scrollview to that of the image's size
        
        
        var rollImagesNames = [#imageLiteral(resourceName: "Roll1"),#imageLiteral(resourceName: "Roll1"),#imageLiteral(resourceName: "Roll1"),#imageLiteral(resourceName: "Roll1"),#imageLiteral(resourceName: "Roll1"),#imageLiteral(resourceName: "Roll1"),#imageLiteral(resourceName: "Roll1"),#imageLiteral(resourceName: "Roll1"),#imageLiteral(resourceName: "Roll1"),#imageLiteral(resourceName: "Roll1"),#imageLiteral(resourceName: "Roll1"),#imageLiteral(resourceName: "Roll2"),#imageLiteral(resourceName: "Roll3"),#imageLiteral(resourceName: "Roll4"),#imageLiteral(resourceName: "Roll5"),#imageLiteral(resourceName: "Roll6"),#imageLiteral(resourceName: "Roll7"),#imageLiteral(resourceName: "Roll8"),#imageLiteral(resourceName: "Roll9"),#imageLiteral(resourceName: "Roll10"),#imageLiteral(resourceName: "Roll11"),#imageLiteral(resourceName: "Roll12"),#imageLiteral(resourceName: "Roll13"),#imageLiteral(resourceName: "Roll14"),#imageLiteral(resourceName: "Roll15"),#imageLiteral(resourceName: "Roll16"),#imageLiteral(resourceName: "Roll15"),#imageLiteral(resourceName: "Roll16"),#imageLiteral(resourceName: "Roll15"),#imageLiteral(resourceName: "Roll16"),#imageLiteral(resourceName: "Roll15"),#imageLiteral(resourceName: "Roll16"),#imageLiteral(resourceName: "Roll15"),#imageLiteral(resourceName: "Roll16"),#imageLiteral(resourceName: "Roll15"),#imageLiteral(resourceName: "Roll16"),#imageLiteral(resourceName: "Roll15"),#imageLiteral(resourceName: "Roll16")]
        var rollImages = [UIImage]()
        
        for i in 0..<rollImagesNames.count{
            
            rollImages.append(rollImagesNames[i])
            
            
        }
      
        //Set initial and final animation positions
        
        let initialPosition = CGPoint(x: 75, y: 650)
        let secondPosition = CGPoint(x: 620, y: 650)
        rollView.center = initialPosition
       
        //Configue imageView "Roll" animation
        
        rollView.animationRepeatCount = 1
        rollView.animationImages = rollImages
        rollView.animationDuration = 5
        rollView.startAnimating()
    
        
        //Move image view from initial position to second position
        UIView.animate(withDuration: 1.98, delay: 3.02, options: [], animations: {
            self.rollView.center = secondPosition
        })
        
        
        
        
    }
    
}

//To keep our code clear and consise, define an extension with the UIScrollViewDelegate

extension ViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        //We need to know the width of our current page
        let pageWidth = Int(imageView.bounds.width)/2 //Will effectively split the large image into 2
        pageControl.currentPage = Int(scrollView.contentOffset.x)/pageWidth
    }
}
