//
//  ResultViewController.swift
//  Burns Depression Test
//
//  Created by Mehmet Ali Kısacık on 20.05.2021.
//

import UIKit
import CoreData

class ResultViewController: UIViewController {
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var tableLabel: UILabel!
    var result : Int?
    var table = """
        Interpreting the results:

        Score  Degree of Depression
        0-4    Minimal or no depression
        5-10   Normal but unhappy
        11-20  Borderline to mild depression
        21-30  Moderate depression
        31-45  Severe depression
    """
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        print(urls)
        
        if let r = result{
            resultLabel.text = "Your total score is \(r)"
        }
        tableLabel.text = table
        let newResult = UserResult(context: context)
        newResult.date = Date()
        newResult.totalPoint = Double(result!)
        saveResult()
    }
    
    
    func saveResult(){
        do {
            try context.save()
        } catch{
            print("Error on saving data \(error)")
        }
    }
    
}
