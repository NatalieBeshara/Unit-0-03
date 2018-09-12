
// Created on: 11-Sept-2018
// Created by: Natalie Beshara
// Created for: ICS3U
// This program is the UIKit solution for the name, city and address program with a bottun

// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let nameLabel : UILabel = UILabel()
    let cityLabel : UILabel = UILabel()
    let countryLabel : UILabel = UILabel()
    let nameCityCountryButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.556862771511078, green: 0.352941185235977, blue: 0.968627452850342, alpha: 1.0)
        self.view = view
        
        //cityLabel.text = "Ottawa"
        cityLabel.textColor = #colorLiteral(red: 0.474509805440903, green: 0.839215695858002, blue: 0.976470589637756, alpha: 1.0)
        view.addSubview(cityLabel)
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        cityLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        cityLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        //nameLabel.text = "Natalie Beshara"
        nameLabel.textColor = #colorLiteral(red: 0.474509805440903, green: 0.839215695858002, blue: 0.976470589637756, alpha: 1.0)
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: cityLabel.topAnchor, constant: -20).isActive = true
        
        
        
        //countryLabel.text = "Canada"
        countryLabel.textColor = #colorLiteral(red: 0.474509805440903, green: 0.839215695858002, blue: 0.976470589637756, alpha: 1.0)
        view.addSubview(countryLabel)
        countryLabel.translatesAutoresizingMaskIntoConstraints = false
        countryLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        countryLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 20).isActive = true
        
        nameCityCountryButton.setTitle("Click Me", for: UIControlState.normal)
        nameCityCountryButton.setTitleColor(.blue, for: .normal)
        nameCityCountryButton.addTarget(self, action: #selector(showText), for: .touchUpInside)
        view.addSubview(nameCityCountryButton)
        nameCityCountryButton.translatesAutoresizingMaskIntoConstraints = false
        nameCityCountryButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameCityCountryButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -60).isActive = true
        
    }
    @objc func showText() {
        nameLabel.text = "Natalie Beshara"
        cityLabel.text = "Ottawa"
        countryLabel.text = "Canada"
    }
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
