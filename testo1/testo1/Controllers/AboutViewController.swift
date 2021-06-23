//
//  AboutViewController.swift
//  Burns Depression Test
//
//  Created by Mehmet Ali Kısacık on 21.05.2021.
//

import UIKit

class AboutViewController: UIViewController {
    @IBOutlet weak var aboutLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let text = """
        This test is originally created by Psychiatrist David D. Burns on "Feeling Good"(1980) which is a best seller book in psychology category. And this app allows you to keep track of your tests. More on "Feeling Good" in www.feelinggood.com. \n \nDisclaimer: The test on this app is not intended as a substitute for professional therapy  Anyone with emotional concerns should contact a mental health professional for consultation and treatment. all questions and concerns about your health require face to face evaluation and support from a health professional.
        """
        aboutLabel.text = text
        // Do any additional setup after loading the view.
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
