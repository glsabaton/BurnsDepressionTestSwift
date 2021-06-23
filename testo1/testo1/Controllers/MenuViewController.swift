//
//  MenuViewController.swift
//  Burns Depression Test
//
//  Created by Mehmet Ali Kısacık on 18.05.2021.
//

import UIKit
import CLTypingLabel
class MenuViewController: UIViewController {
    @IBOutlet weak var mainTitleLabel: CLTypingLabel!
    
    @IBOutlet weak var takeTestButton: UIButton!
    
    @IBOutlet weak var oldTestButton: UIButton!
    
    @IBOutlet weak var aboutButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        print(Questions.arr.count)
        takeTestButton.layer.cornerRadius = 25
        oldTestButton.layer.cornerRadius = 25
        aboutButton.layer.cornerRadius = 25
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTitleLabel.text = "BURNS DEPRESSION TEST"
        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    @IBAction func takeTestButtonPressed(_ sender: UIButton) {
        let real = sender.backgroundColor!
        UIView.animate(withDuration: 0.5){
            sender.backgroundColor = sender.tintColor
            sender.backgroundColor = real
        }
    }
    
    
    @IBAction func oldTestsButtonPressed(_ sender: UIButton) {
        let real = sender.backgroundColor!
        UIView.animate(withDuration: 0.5){
            sender.backgroundColor = sender.tintColor
            sender.backgroundColor = real
        }

    }
    
    @IBAction func aboutTheTestButtonPressed(_ sender: UIButton) {
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
