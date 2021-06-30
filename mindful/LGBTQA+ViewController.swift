//
//  LGBTQA+ViewController.swift
//  mindful
//
//  Created by  Scholar on 6/29/21.
//

import UIKit

class LGBTQA_ViewController: UIViewController {
    
    @IBOutlet weak var moreInfoText: UIButton!
    
    var websites = ["https://www.youtube.com/watch?v=HNOOeRVq9Xw", "https://www.google.com/?client=safari"]
    var websiteIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func homeButtonPressed(_ sender: Any) {
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
    }

    @IBAction func moreInfoPressed(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: websites[websiteIndex])! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func nextResourcePressed(_ sender: UIButton) {
        websiteIndex += 1
        websiteIndex = websiteIndex % websites.count
        //moreInfoText.setTitle("testing", for: .normal)
    }
}
