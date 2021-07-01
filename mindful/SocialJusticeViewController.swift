//
//  SocialJusticeViewController.swift
//  mindful
//
//  Created by Sophia May on 6/29/21.
//

import UIKit

class SocialJusticeViewController: UIViewController {
    @IBOutlet weak var resourcesName: UILabel!
    @IBOutlet weak var moreInfoButtonText: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var websites = ["https://www.beam.community/whatwebelieve", "https://www.mhanational.org/issues/asian-americanpacific-islander-communities-and-mental-health", "https://www.nami.org/Your-Journey/Identity-and-Cultural-Dimensions/Black-African-American", "https://www.apa.org/pi/oema/resources/ethnicity-health/asian-american/article-mental-health"]
    var buttonNames = ["Click here to learn more about BEAM", "Click here to learn more about MHA", "Click here to learn more about The NAMI", "Click here to learn more about The American Psychology Association"]
    var titles = ["Black Emotional and Mental Health Collective (BEAM)", "Mental Health America (MHA)", "The National Alliance on Mental Illness (NAMI)", "The American Psychological Association (APA)"]
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
        index += 1
        index = index % websites.count
        moreInfoButtonText.setTitle(buttonNames[index], for: .normal)
        resourcesName.text = titles[index]
        
    }
}
