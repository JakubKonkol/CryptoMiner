//
//  InfoViewController.swift
//  CryptoMiner
//
//  Created by Jakub Konkol on 17/08/2021.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func reset(_ sender: Any) {
        ViewController.Zmienne.Z_WALLET = 2000
        ViewController.Zmienne.Z_KC_HR = 0
        ViewController.Zmienne.Z_KC_OWN = 0
        ViewController.Zmienne.KUPIONE_ZTX220 = 0
        ViewController.Zmienne.KUPIONE_ZTX220T = 0
        ViewController.Zmienne.CENA_Z220 = 200
        ViewController.Zmienne.CENA_Z220T = 500
    }
    


}
