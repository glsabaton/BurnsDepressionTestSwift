//
//  ViewController.swift
//  testo1
//
//  Created by Mehmet Ali Kısacık on 17.05.2021.
//

import UIKit
import CLTypingLabel
class QuestionsViewController: UIViewController {

    @IBOutlet weak var questionLabel: CLTypingLabel!
    
    @IBOutlet weak var firstChoice: UISwitch!
    
    @IBOutlet weak var secondChoice: UISwitch!
    
    @IBOutlet weak var thirdChoice: UISwitch!
    
    @IBOutlet weak var forthChoice: UISwitch!
    
    @IBOutlet weak var fifthChoice: UISwitch!
    
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var backButton: UIButton!
    
    var switchesArr : [UISwitch] = []
    var pointsArr : [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 0...Questions.arr.count-1{
            pointsArr.append(0)
        }
        switchesArr.append(firstChoice)
        switchesArr.append(secondChoice)
        switchesArr.append(thirdChoice)
        switchesArr.append(forthChoice)
        switchesArr.append(fifthChoice)
        for choice in switchesArr{
            choice.isOn = false
        }
        questionLabel.charInterval = 0.05
        questionLabel.text = Questions.arr[Questions.currentQuestion]
    }
    
    @IBAction func switchPressed(_ sender: UISwitch) {
        let choiceIndex = switchesArr.firstIndex(of: sender)
        for i in 0...4{
            if i == choiceIndex{
                switchesArr[i].setOn(true, animated: true)
                pointsArr[Questions.currentQuestion] = i //sets the point to pointsArr
            }else{
                switchesArr[i].setOn(false, animated: true)
            }
        }
    }
 
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        let real = sender.backgroundColor!
        UIView.animate(withDuration: 0.5){
            sender.backgroundColor = sender.tintColor
            sender.backgroundColor = real
        }
        if Questions.currentQuestion < Questions.arr.count-1{
            Questions.currentQuestion += 1
            questionLabel.text = Questions.arr[Questions.currentQuestion]
            clearChoices()
        }
        // if the tests ends
        if Questions.currentQuestion == Questions.arr.count-1 {
            performSegue(withIdentifier: "resultsSegue", sender: self)
        }
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        let real = sender.backgroundColor!
        UIView.animate(withDuration: 0.5){
            sender.backgroundColor = sender.tintColor
            sender.backgroundColor = real
        }
        if Questions.currentQuestion > 0{
            Questions.currentQuestion -= 1
            questionLabel.text = Questions.arr[Questions.currentQuestion]
            clearChoices()
        }
        
    }
    
    func clearChoices(){
        for choice in switchesArr {
            choice.setOn(false, animated: true)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVc = segue.destination as! ResultViewController
        var result = 0
        for point in pointsArr{
            result += point
        }
        destinationVc.result = result
        
    
    }
}

