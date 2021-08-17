//
//  MinersViewController.swift
//  CryptoMiner
//
//  Created by Jakub Konkol on 16/08/2021.
//

import UIKit

class MinersViewController: UIViewController {
    @IBOutlet weak var I_220: UILabel!
    @IBOutlet weak var I_220T: UILabel!
    var timer2: Timer!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        I_220.text = String(ViewController.Zmienne.KUPIONE_ZTX220)
        I_220T.text = String(ViewController.Zmienne.KUPIONE_ZTX220T)
        timer2 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(refresh), userInfo: nil, repeats: true)
    }
    @objc func refresh(){
        I_220.text = String(ViewController.Zmienne.KUPIONE_ZTX220)
        I_220T.text = String(ViewController.Zmienne.KUPIONE_ZTX220T)
    }
    
    }
    

    
    


