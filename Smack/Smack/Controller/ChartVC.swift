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
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
