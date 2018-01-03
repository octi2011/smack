//
//  ChannelVC.swift
//  Smack
//
//  Created by Octavian on 03/01/2018.
//  Copyright © 2018 Octavian. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }
}
