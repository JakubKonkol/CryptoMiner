//
//  ShopViewController.swift
//  CryptoMiner
//
//  Created by Jakub Konkol on 16/08/2021.
//

import UIKit

class ShopViewController: UIViewController {
    @IBOutlet weak var wallet: UILabel!
    @IBOutlet weak var z220t_button: UIButton!
    @IBOutlet weak var z220_button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wallet.text = String(ViewController.Zmienne.Z_WALLET)
        z220_button.setTitle(String(ViewController.Zmienne.CENA_Z220) + "$", for: .normal)
        z220t_button.setTitle(String(ViewController.Zmienne.CENA_Z220T) + "$", for: .normal)
        
    }
    @IBAction func KUP_220(_ sender: Any) {
        if ViewController.Zmienne.Z_WALLET >= ViewController.Zmienne.CENA_Z220 {
            ViewController.Zmienne.Z_WALLET = ViewController.Zmienne.Z_WALLET - ViewController.Zmienne.CENA_Z220
            ViewController.Zmienne.KUPIONE_ZTX220 = ViewController.Zmienne.KUPIONE_ZTX220 + 1
            wallet.text = String(ViewController.Zmienne.Z_WALLET)
            ViewController.Zmienne.CENA_Z220 = ViewController.Zmienne.CENA_Z220 * 2
            z220_button.setTitle(String(ViewController.Zmienne.CENA_Z220) + "$", for: .normal)
            
            
        }
        else {
            let alert = UIAlertController(title: "No money", message: "You don't have enough money to buy this item!", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            

            self.present(alert, animated: true)
        }
    }
    @IBAction func KUP_Z220T(_ sender: Any) {
        if ViewController.Zmienne.Z_WALLET >= ViewController.Zmienne.CENA_Z220T{
            ViewController.Zmienne.Z_WALLET = ViewController.Zmienne.Z_WALLET - ViewController.Zmienne.CENA_Z220T
            ViewController.Zmienne.KUPIONE_ZTX220T = ViewController.Zmienne.KUPIONE_ZTX220T + 1
            wallet.text = String(ViewController.Zmienne.Z_WALLET)
            ViewController.Zmienne.CENA_Z220T = ViewController.Zmienne.CENA_Z220T * 2
            z220t_button.setTitle(String(ViewController.Zmienne.CENA_Z220T) + "$", for: .normal)
        }else{
            let alert = UIAlertController(title: "No money", message: "You don't have enough money to buy this item!", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            

            self.present(alert, animated: true)
        }
    }
    
    
    

}
