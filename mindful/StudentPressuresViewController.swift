//
//  StudentPressuresViewController.swift
//  mindful
//
//  Created by Sophia May on 6/29/21.
//

import UIKit

class StudentPressuresViewController: UIViewController {
    @IBOutlet weak var resourcesName: UILabel!
    @IBOutlet weak var moreInfoButtonText: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    
    var websites = ["https://www.bestcolleges.com/resources/top-5-mental-health-problems-facing-college-students/",
        "https://www.newportinstitute.com/resources/mental-health/self-care-practices/",
        "https://adaa.org/",
        "https://www.stopitnow.org/ohc-content/crisis-hotlines-for-youth"
        ]
    var buttonNames = ["Click for more about mental health for students", "Click here to learn more about self care practices", "Anxiety & Depression Association of America Link", "Click for more about the Crisis hotlines for youth"]
    var titles = ["Symptoms and signs of common mental health challenges students face", "\n6 Daily Self-Care Practices for Young Adults", "\nAnxiety and Depression Association of America", "\nCrisis hotlines for youth"]
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nextButton.layer.cornerRadius = 12
        nextButton.layer.borderWidth = 2
        nextButton.layer.borderColor = UIColor(red: 0, green: 61/255, blue: 57/255, alpha: 1).cgColor
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
    @IBAction func moreInfoButtonPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string: websites[index])! as URL, options: [:], completionHandler: nil)
    }
    
}
