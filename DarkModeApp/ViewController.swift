//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Görkem Güray on 2.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //kullanıcını telefonu hangi modda kullandığına bakmadan
        //bu view bizim belirlediğimiz modda çalıştıracaktır.
        overrideUserInterfaceStyle = .light
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            
            changeButton.tintColor = UIColor.white
            
        } else {
            changeButton.tintColor = UIColor.systemPink
        }    }
    
    
    //sistem görünüş değişimlerinde bu fonksiyon çalışır.
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            
            changeButton.tintColor = UIColor.white
            
        } else {
            changeButton.tintColor = UIColor.systemPink
        }
    }


}

