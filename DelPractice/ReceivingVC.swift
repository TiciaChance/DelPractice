//
//  ReceivingVC.swift
//  DelPractice
//
//  Created by Laticia Chance on 12/3/16.
//  Copyright © 2016 Laticia Chance. All rights reserved.
//

import UIKit

class ReceivingVC: UIViewController, InfoSentDel {

    @IBOutlet weak var receivingTxtLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func userDidEnterInfo(info: String) {
      
        receivingTxtLbl.text = info
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSendingVC" {
            let sendingVC = segue.destination as! SendingVC
            sendingVC.delegate = self
        }
    }

}

