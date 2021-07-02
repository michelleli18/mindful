//
//  CovidConcernsViewController.swift
//  mindful
//
//  Created by Sophia May on 6/29/21.
//

import UIKit

class CovidConcernsViewController: UIViewController {
    
    @IBOutlet weak var resourcesName: UILabel!
    @IBOutlet weak var moreInfoButtonText: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var websites = ["https://www.cdc.gov/coronavirus/2019-ncov/index.html", "https://timely.md/blog/self-care-tips-for-college-students/", "https://www.cdc.gov/coronavirus/2019-ncov/daily-life-coping/managing-stress-anxiety.html"]
    var buttonNames = ["Click here to learn more on latest updated on Covid-19", "Click here to learn more about Self-Care Tips", "Click for more about anxiety related to COVID-19"]
    
    var titles = ["Latest updates on Covid-19", "Self-Care Tips for Students During COVID-19", "Information from the CDC for coping with anxiety related to COVID-19"]
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nextButton.layer.cornerRadius = 12
        nextButton.layer.borderWidth = 2
        nextButton.layer.borderColor = UIColor(red: 0, green: 61/255, blue: 57/255, alpha: 1).cgColor
        // Do any additional setup after loading the view.
    }
    
    @IBAction func moreInfoPressed(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: websites[index])! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        
        let firstIndex = index
        var secondIndex : Int
        if index + 1 != websites.count {
            secondIndex = index + 1
        } else {
            secondIndex = 0
        }
        
        UIView.transition(with: resourcesName,
                          duration: 0.45,
                       options: .transitionCrossDissolve,
                    animations: { [weak self] in
                        self?.resourcesName.text = (arc4random() % 2 == 0) ? self?.titles[firstIndex] : " "
                 }, completion: nil)
        
        UIView.transition(with: resourcesName,
                          duration: 0.45,
                       options: .transitionCrossDissolve,
                    animations: { [weak self] in
                        self?.resourcesName.text = (arc4random() % 2 == 0) ? " " : self?.titles[secondIndex]
                 }, completion: nil)
        
        
        
        index += 1
        index = index % websites.count
        moreInfoButtonText.setTitle(buttonNames[index], for: .normal)
        resourcesName.text = titles[index]
        
    }
}
