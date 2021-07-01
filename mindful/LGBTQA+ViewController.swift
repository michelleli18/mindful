//
//  LGBTQA+ViewController.swift
//  mindful
//
//  Created by  Scholar on 6/29/21.
//

import UIKit

class LGBTQA_ViewController: UIViewController {
    
    @IBOutlet weak var moreInfoText: UIButton!
    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    var websites = ["https://www.apa.org/pi/lgbt/resources/lgbt-health", "https://www.thetrevorproject.org/resources/", "http://www.glbtnationalhelpcenter.org/"]
    var buttonNames = ["Click here to learn more about APA", "Click here to learn more about The Treavor Project", "Click here to learn more about the LGBT national health center"]
    var titles = ["The American Psychological Association (APA)", "The Trevor Project", "LGBT National Health Center"]
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.layer.cornerRadius = 12
        nextButton.layer.borderWidth = 2
        nextButton.layer.borderColor = UIColor(red: 0, green: 61/255, blue: 57/255, alpha: 1).cgColor
    }
    
    @IBAction func moreInfoPressed(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: websites[index])! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func nextResourcePressed(_ sender: UIButton) {
        let firstIndex = index
        var secondIndex : Int
        if index + 1 != websites.count {
            secondIndex = index + 1
        } else {
            secondIndex = 0
        }
        
        UIView.transition(with: titleText,
                          duration: 0.2,
                       options: .transitionCrossDissolve,
                    animations: { [weak self] in
                        self?.titleText.text = (arc4random() % 2 == 0) ? self?.titles[firstIndex] : " "
                 }, completion: nil)
        
        UIView.transition(with: titleText,
                          duration: 0.2,
                       options: .transitionCrossDissolve,
                    animations: { [weak self] in
                        self?.titleText.text = (arc4random() % 2 == 0) ? " " : self?.titles[secondIndex]
                 }, completion: nil)
        
        index += 1
        index = index % websites.count
        moreInfoText.setTitle(buttonNames[index], for: .normal)
        titleText.text = titles[index]
        
        
    }
    
    @IBAction func homeButtonPressed(_ sender: Any) {
    }

}
