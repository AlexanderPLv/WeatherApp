//
//  MainVC.swift
//  SunCloud
//
//  Created by MacMini on 21/06/2019.
//  Copyright © 2019 com.blablabla. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var sunCloudLabel: UILabel!
    @IBOutlet weak var enterCityTextField: UITextField!
    
    @IBAction func didTapGoButton() {
        performSegue(withIdentifier: "segue.main.enterCityToWeatherVC", sender: nil)
    }
    
    @IBAction func returnToMainVC(_ sender: UIStoryboardSegue) {}
}
