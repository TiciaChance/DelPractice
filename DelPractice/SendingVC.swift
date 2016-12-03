//
//  SendingVC.swift
//  DelPractice
//
//  Created by Laticia Chance on 12/3/16.
//  Copyright © 2016 Laticia Chance. All rights reserved.
//

import UIKit

//declaring a protocol is a way to name a delegate
protocol InfoSentDel {
    func userDidEnterInfo(info: String)
}

class SendingVC: UIViewController {

    @IBOutlet weak var infoEntryTextfield: UITextField!
    var delegate: InfoSentDel? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

 
    
    @IBAction func sendButtonTapped(_ sender: Any) {
        
        if delegate != nil {
            if infoEntryTextfield.text != nil {
                let info = infoEntryTextfield.text
                delegate?.userDidEnterInfo(info: info!)
                dismiss(animated: true, completion: nil)
            }
        }
        
    }

}
