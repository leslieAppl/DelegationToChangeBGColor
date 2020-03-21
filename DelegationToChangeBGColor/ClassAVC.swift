//
//  ViewController.swift
//  DelegationToChangeBGColor
//
//  Created by leslie on 2/26/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

//MARK: step 4 adopt the protocol here
class ClassAVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //MARK: step 5 create a reference of Class B and bind them through the prepareforsegue method
        let classBVC = segue.destination as! ClassBVC
        classBVC.delegate = self    //Cause 'self' adopted the protocol, so can replace delegate's value.
        
    }


}

extension ClassAVC: ClassBVCDelegate {
    //MARK: step 6 finally use the method of the contract here
    func changeBGColor(_ color: UIColor?) {
        
        view.backgroundColor = color
    }
}
