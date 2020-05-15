//
//  FirstViewController.swift
//  spending
//
//  Created by Arnav on 12/04/20.
//  Copyright © 2020 Arnav. All rights reserved.


import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {
    
    var Category:String = ""
    var Balance_Value = 0
    var Income:Int = 0
    var Expense:Int = 0
    var Balance:Int = 0
    
    
    override func viewDidLoad() {
       
        loadvalues()
        super.viewDidLoad()
        
        self.ExpenseInput.delegate = self
        self.Goals.delegate = self
        self.ExpenseInput.delegate = self
        
    }
    
    let defaults = UserDefaults.standard
    
    
    struct keys
{
    static let Income_value = "IncomeValue"
    static let Expense_value = "ExpenseValue"
    static let Balance_value = "BalanceValue"
    
    }
   

    @IBOutlet weak var BalanceLbl: UILabel!
    @IBOutlet weak var ExpenseLbl: UILabel!
    @IBOutlet weak var IncomeLbl: UILabel!
    @IBOutlet weak var GoalsLbl: UILabel!
    @IBOutlet weak var ExpenseInput: UITextField!
    @IBOutlet weak var IncomeInput: UITextField!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func plusbuttton(_ sender: Any) {
        
        if(IncomeInput.text == "")
        {
            Income+=0
        }
        else{
            Income += Int(IncomeInput.text!)!        }
        if(ExpenseInput.text == "")
        {
            Expense+=0
        }
        else{
            
            Expense += Int(ExpenseInput.text!)!
        
        ExpenseLbl.text  =  String(Expense)
        IncomeLbl.text = String(Income)
        Balance = Income - Expense
        BalanceLbl.text = String(Balance)
            
        
ExpenseInput.text = ""
IncomeInput.text = ""
        }
        
    
        
       func savevalues()
        {
            defaults.set(Income, forKey: keys.Income_value)
            defaults.set(Expense, forKey: keys.Expense_value)
            defaults.set( Balance , forKey: keys.Balance_value)
            
        }
        savevalues()
        
        
        
    }
    @IBAction func resetbutton(_ sender: Any) {
        Income = 0
        Expense = 0
        ExpenseLbl.text = ""
        IncomeLbl.text = ""
        BalanceLbl.text = ""
    }
    
    @IBOutlet weak var Goals: UITextField!
    @IBOutlet weak var G1Lbl: UILabel!
    @IBOutlet weak var G2Lbl: UILabel!
    @IBAction func AG(_ sender: Any) {
        if(G1Lbl.text == "")
        {
            G1Lbl.text = Goals.text
        }
        else if(G2Lbl.text == "")
        {
            G2Lbl.text = Goals.text
        }
        
        defaults.set(G1Lbl.text, forKey: "Keys_G1Lbl")
        defaults.set(G2Lbl.text, forKey: "Keys_G2Lbl")
    }
    @IBAction func RG(_ sender: Any) {
        G1Lbl.text = ""
        G2Lbl.text=""
        defaults.set(G1Lbl.text, forKey: "Keys_G1Lbl")
        defaults.set(G2Lbl.text, forKey: "Keys_G2Lbl")
    }
    
    func loadvalues()
    {
        let  value = defaults.integer(forKey: keys.Income_value)
       Income = value
        IncomeLbl.text = String(Income)
        
        
        let value2 = defaults.integer(forKey: keys.Expense_value)
        Expense = value2
        ExpenseLbl.text = String(Expense)
        
        let value3 = defaults.integer(forKey: keys.Balance_value)
        Balance = value3
        BalanceLbl.text = String(Balance)
        
        let string1 = defaults.string(forKey: "Keys_G1Lbl")
        G1Lbl.text = string1
        
        let string2 = defaults.string(forKey: "Keys_G2Lbl")
        G2Lbl.text = string2
        
    }
    
    @IBAction func BB(_ sender: Any) {
        
         self.Balance_Value = Balance
        performSegue(withIdentifier: "name", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! BudgetViewController
        vc.FinalBalance = self.Balance_Value

        
        
    }
    
    
    
    
    }
