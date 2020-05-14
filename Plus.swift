//
//  Plus.swift
//  spendingTests
//
//  Created by Arnav on 13/04/20.
//  Copyright © 2020 Arnav. All rights reserved.
//

import XCTest
import UIKit
class Plus: UIViewController {
    
        override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var ExpenseInput: UITextField!
    
    @IBOutlet weak var ExpenseType: UITextField!
    
    @IBOutlet weak var IncomeInput: UITextField!
    
    
    @IBOutlet weak var BudgetInput: UITextField!
    
    
    @IBAction func button(_ sender: Any) {
        var a:String = ExpenseInput.text!
        print(a)    }

    
    
    
    
    
    
    
    
    
    
}




