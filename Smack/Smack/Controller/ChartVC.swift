//
//  ChartVC.swift
//  Smack
//
//  Created by Octavian on 11/01/2018.
//  Copyright © 2018 Octavian. All rights reserved.
//

import UIKit
import Charts

class ChartVC: UIViewController {

    @IBOutlet weak var mainView: UIView!
    var chart: BarChartView!
    var dataSet: BarChartDataSet!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let values = [10,20,30,40]
        
        var entries: [BarChartDataEntry] = Array()
        for (i, value) in values.enumerated()
        {
            entries.append(BarChartDataEntry(x: Double(i), y: Double(value), icon: UIImage(named: "light1", in: Bundle(for: self.classForCoder), compatibleWith: nil)))
        }
        
        dataSet = BarChartDataSet(values: entries, label: "Bar chart unit test data")
        dataSet.drawIconsEnabled = false
        dataSet.iconsOffset = CGPoint(x: 0, y: -10.0)
        
        let data = BarChartData(dataSet: dataSet)
        data.barWidth = 0.85
        
        chart = BarChartView(frame: CGRect(x: 0, y: 0, width: mainView.frame.width, height: mainView.frame.height))
        chart.backgroundColor = NSUIColor.clear
        chart.leftAxis.axisMinimum = 0.0
        chart.rightAxis.axisMinimum = 0.0
        chart.data = data
        mainView.addSubview(chart)
    }
    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
