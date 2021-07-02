//
//  VentingJournalViewController.swift
//  mindful
//
//  Created by  Scholar on 7/1/21.
//

import UIKit

class VentingJournalViewController: UIViewController {

    @IBOutlet weak var deleteButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        deleteButton.layer.cornerRadius = 12
        deleteButton.layer.borderWidth = 2
        deleteButton.layer.borderColor = UIColor(red: 0, green: 61/255, blue: 57/255, alpha: 1).cgColor
        self.hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var journalText: UITextView!
    @IBAction func deleteButtonPressed(_ sender: UIButton) {
        if journalText?.text != nil {
            journalText.text = ""
        }
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
