//
//  CategoryViewController.swift
//  spending
//
//  Created by Arnav on 10/05/20.
//  Copyright © 2020 Arnav. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    var FinalCategory:String = ""
    var FinalExpense:String = ""
    var FinalDate = 0
    var empty  = ""
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch empty {
        case Amount_1.text:
            Amount_1.text = FinalExpense
            Category_1.text = FinalCategory
            
        case Amount_2.text:
            Amount_2.text = FinalExpense
            Category_2.text = FinalCategory
            
        case Amount_3.text:
            Amount_3.text = FinalExpense
            Category_3.text = FinalCategory
        
        case Amount_4.text:
            Amount_4.text = FinalExpense
            Category_4.text = FinalCategory
        
        case Amount_5.text:
            Amount_5.text = FinalExpense
            Category_5.text = FinalCategory
        
        case Amount_6.text:
            Amount_6.text = FinalExpense
            Category_6.text = FinalCategory
            
        case Amount_7.text:
            Amount_7.text = FinalExpense
            Category_7.text = FinalCategory
        
        case Amount_9.text:
            Amount_8.text = FinalExpense
            Category_8.text = FinalCategory
            
        case Amount_9.text:
            Amount_9.text = FinalExpense
            Category_9.text = FinalCategory
            
        case Amount_10.text:
            Amount_10.text = FinalExpense
            Category_10.text = FinalCategory
        default: break
            
            
            
        }
        
        
    }
    
    
    @IBOutlet weak var Amount_1: UILabel!
    @IBOutlet weak var Amount_2: UILabel!
    @IBOutlet weak var Amount_3: UILabel!
    @IBOutlet weak var Amount_4: UILabel!
    @IBOutlet weak var Amount_5: UILabel!
    @IBOutlet weak var Amount_6: UILabel!
    @IBOutlet weak var Amount_7: UILabel!
    @IBOutlet weak var Amount_8: UILabel!
    @IBOutlet weak var Amount_9: UILabel!
    @IBOutlet weak var Amount_10: UILabel!
    
    
    @IBOutlet weak var Date_1: UILabel!
    @IBOutlet weak var Date_2: UILabel!
    @IBOutlet weak var Date_3: UILabel!
    @IBOutlet weak var Date_4: UILabel!
    @IBOutlet weak var Date_5: UILabel!
    @IBOutlet weak var Date_6: UILabel!
    @IBOutlet weak var Date_7: UILabel!
    @IBOutlet weak var Date_8: UILabel!
    @IBOutlet weak var Date_9: UILabel!
    @IBOutlet weak var Date_10: UILabel!
    
    
    @IBOutlet weak var Category_1: UILabel!
    @IBOutlet weak var Category_2: UILabel!
    @IBOutlet weak var Category_3: UILabel!
    @IBOutlet weak var Category_4: UILabel!
    @IBOutlet weak var Category_5: UILabel!
    @IBOutlet weak var Category_6: UILabel!
    @IBOutlet weak var Category_7: UILabel!
    @IBOutlet weak var Category_8: UILabel!
    @IBOutlet weak var Category_9: UILabel!
    @IBOutlet weak var Category_10: UILabel!
    
    
    
}


