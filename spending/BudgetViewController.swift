//
//  BudgetViewController.swift
//  spending
//
//  Created by Arnav on 21/04/20.
//  Copyright © 2020 Arnav. All rights reserved.
//

import UIKit
import Charts


class BudgetViewController: UIViewController, UITextFieldDelegate {
    
  
    @IBOutlet weak var pieview: PieChartView!
    
    @IBOutlet weak var Lbl: UILabel!
    var FinalBalance = 0
    
override func viewDidLoad() {
        loadvalues()
        self.BudgetLbl.delegate = self
    
    
        super.viewDidLoad()

        Lbl.text = String(FinalBalance)
    SetupPieChart()
    
    }
    func SetupPieChart()
    {
        pieview.chartDescription?.enabled = false
        pieview.drawHoleEnabled = false
        pieview.rotationAngle = 0
        pieview.rotationEnabled = false
        pieview.isUserInteractionEnabled = false
        
        
        var entries: [PieChartDataEntry] = Array()
        entries.append(PieChartDataEntry(value: Double(Budget), label: "Budget"))
        entries.append(PieChartDataEntry(value: Double(FinalBalance), label:"Balance"))
        
        let DataSet = PieChartDataSet(values: entries, label: "" )
        
        let c1 = NSUIColor(hex: 0x3A015C)
        let c2 = NSUIColor(hex: 0x11001C)
        
        DataSet.colors =  [c1,c2]
        DataSet.drawValuesEnabled = false
        
        pieview.data = PieChartData(dataSet: DataSet)
        
    
        
    }
    
   
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    var Budget:Int = 0
    @IBOutlet weak var BudgetLbl: UITextField!
     let defaults = UserDefaults.standard
    
    @IBAction func BP(_ sender: Any) {
        if(BudgetLbl.text == "")
        {
            Budget+=0
        }
        else
        {
            Budget += Int(BudgetLbl.text!)!
            BudgetLbl.text = ""
        }
        
        defaults.set(Budget, forKey:"Key_Budget")
        
    }

    
    func loadvalues()
    {
        let  value = defaults.integer(forKey: "Key_Budget")
        Budget = value
    }
    
    
    
}
