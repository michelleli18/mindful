//
//  HomePageViewController.swift
//  mindful
//
//  Created by Nidhi Pabbathi on 6/29/21.
//

import UIKit

class HomePageViewController: UIViewController {

    @IBOutlet weak var lgbtqiaButton: UIButton!
    @IBOutlet weak var studentPressuresButton: UIButton!
    @IBOutlet weak var traumaButton: UIButton!
    @IBOutlet weak var blmsahButton: UIButton!
    @IBOutlet weak var covidButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // this part makes it a rounded border and changes the border color too
        lgbtqiaButton.layer.cornerRadius = 12
        lgbtqiaButton.layer.borderWidth = 5
        lgbtqiaButton.layer.borderColor = UIColor(red: 0, green: 61/255, blue: 57/255, alpha: 1).cgColor
        
        studentPressuresButton.layer.cornerRadius = 12
        studentPressuresButton.layer.borderWidth = 5
        studentPressuresButton.layer.borderColor = UIColor(red: 0, green: 61/255, blue: 57/255, alpha: 1).cgColor
        
        traumaButton.layer.cornerRadius = 12
        traumaButton.layer.borderWidth = 5
        traumaButton.layer.borderColor = UIColor(red: 0, green: 61/255, blue: 57/255, alpha: 1).cgColor
        
        blmsahButton.layer.cornerRadius = 12
        blmsahButton.layer.borderWidth = 5
        blmsahButton.layer.borderColor = UIColor(red: 0, green: 61/255, blue: 57/255, alpha: 1).cgColor
        
        covidButton.layer.cornerRadius = 12
        covidButton.layer.borderWidth = 5
        covidButton.layer.borderColor = UIColor(red: 0, green: 61/255, blue: 57/255, alpha: 1).cgColor
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
