//
//  HowToViewController.swift
//  Burns Depression Test
//
//  Created by Mehmet Ali Kısacık on 18.05.2021.
//

import UIKit

class HowToViewController: UIViewController {
    @IBOutlet weak var gotItButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func gotItButtonPressed(_ sender: UIButton) {
        let real = sender.backgroundColor!
        UIView.animate(withDuration: 0.5){
            sender.backgroundColor = sender.tintColor
            sender.backgroundColor = real
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
