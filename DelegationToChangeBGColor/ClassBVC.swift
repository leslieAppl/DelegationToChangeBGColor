//
//  ClassBVC.swift
//  DelegationToChangeBGColor
//
//  Created by leslie on 2/26/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

//MARK: step 1 Add Protocol here
protocol ClassBVCDelegate: class {
    
    func changeBGColor(_ color: UIColor?)
    
}

class ClassBVC: UIViewController {
    
    //MARK: step 2 Create a delegate property here, don't forget to make it weak!
    weak var delegate: ClassBVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func APressed(_ sender: Any) {
        
        view.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        
        //MARK: step 3 Add the delegate method call here
        delegate?.changeBGColor(view.backgroundColor)
    }
    
    @IBAction func BPressed(_ sender: Any) {
        
        view.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        
        //MARK: step 3 Add the delegate method call here
        delegate?.changeBGColor(view.backgroundColor)

    }
}
