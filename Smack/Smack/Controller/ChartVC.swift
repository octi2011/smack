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
    var chart: PieChartView!
    var dataSet: PieChartDataSet!
    
    var screenSize = UIScreen.main.bounds
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let chart = PieChartView(frame: UIScreen.main.bounds)
        // 2. generate chart data entries
        var usernames = [String: Int]()
        
        for i in 0..<MessageService.instance.messages.count {
            if usernames[MessageService.instance.messages[i].userName] == nil {
                usernames[MessageService.instance.messages[i].userName] = 1
            } else {
                usernames[MessageService.instance.messages[i].userName]! += 1
            }
        }
        
        let counts = usernames.values
        
        var entries = [PieChartDataEntry]()
        for i in usernames {
            let entry = PieChartDataEntry()
            entry.y = Double(i.value)
            entry.label = i.key
            entries.append(entry)
        }
        
        // 3. chart setup
        let set = PieChartDataSet( values: entries, label: "Pie Chart")
        var colors: [UIColor] = []
        
        for _ in 0..<counts.count {
            let red = Double(arc4random_uniform(256))
            let green = Double(arc4random_uniform(256))
            let blue = Double(arc4random_uniform(256))
            let color = UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: 1)
            colors.append(color)
        }
        set.colors = colors
        let data = PieChartData(dataSet: set)
        chart.data = data
        chart.noDataText = "No data available"
        // user interaction
        chart.isUserInteractionEnabled = true
        
        chart.holeRadiusPercent = 0.2
        chart.transparentCircleColor = UIColor.clear
        mainView.addSubview(chart)

    }
    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
