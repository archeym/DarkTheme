//
//  ThemeViewController.swift
//  DarkTheme
//
//  Created by Arkadijs Makarenko on 03/04/2023.
//

import UIKit

class ThemeViewController: UIViewController {

    
    @IBOutlet weak var darkThemeButton: UIButton!
    
    var mainText: String = "Dark Theme on"
    var darkIsOn: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad from ViewController")
        darkThemeButton.layer.cornerRadius = 8
        
        darkThemeIsOn(isOn: darkIsOn)
        // Do any additional setup after loading the view.
    }

    @IBAction func darkThemeButtonTapped(_ sender: Any) {

        darkThemeIsOn(isOn: darkIsOn)
        
    }
    
    @IBAction func plusButtonTapped(_ sender: Any) {
        basicAlert(title: "Add New?", message: "Do you want to add new...?")
    }
    
    @IBAction func infoButtonTapped(_ sender: Any) {
        basicActionAlert(title: "Action Sheet is On!", message: "All good here")
    }
    
    
    func darkThemeIsOn(isOn: Bool){
        mainText = isOn ? "Dark Theme on" : "Dark Theme off"
        
        darkThemeButton.setTitle(mainText, for: .normal)
        darkThemeButton.setTitleColor(isOn ? UIColor.black : UIColor.white, for: .normal)
        
        navigationItem.title = mainText
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: isOn ? UIColor.black : UIColor.white]
        view.backgroundColor = !isOn ? UIColor.black : UIColor.white
        darkIsOn.toggle()
    }
    
    
}

