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
//        performSegue(withIdentifier: "segue.main.enterCityToWeatherVC", sender: nil)
        
       
        guard enterCityTextField.text?.isEmpty == false else { return }
        
        var components = URLComponents(string: "https://samples.openweathermap.org/data/2.5/find")
        let cityQuery = URLQueryItem(name: "q", value: enterCityTextField.text)
        let idQuery = URLQueryItem(name: "appid", value: "a67b6d7ad1cad3ca35b6b1b806fe9284")
        let unitsQuery = URLQueryItem(name: "units", value: "metric")
        components?.queryItems = [cityQuery, unitsQuery, idQuery]
        
        guard let url = components?.url else { return }
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url) { (data, _, error) in
            
           
            
            if let error = error {
                print(error)
            } else if let data = data {
                print(data)
                do {
                let decoder = JSONDecoder()
                let weatherReport = try decoder.decode(WeatherReport.self, from: data)
                print(weatherReport)
                } catch {
                    print(error)
                }
            }
            
        }
       dataTask.resume()
        
    }
    
    @IBAction func returnToMainVC(_ sender: UIStoryboardSegue) {}
}
