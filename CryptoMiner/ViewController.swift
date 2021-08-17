//
//  ViewController.swift
//  CryptoMiner
//
//  Created by Jakub Konkol on 16/08/2021.
//

import UIKit

class ViewController: UIViewController {
    //IBoutlety
    @IBOutlet weak var KC_CENA: UILabel!
    @IBOutlet weak var KC_OWN: UILabel!
    @IBOutlet weak var KC_HR: UILabel!
    @IBOutlet weak var WALLET: UILabel!
    @IBOutlet weak var MINERS: UIButton!
    @IBOutlet weak var SELL_KC: UIButton!
    @IBOutlet weak var SHOP: UIButton!
    // GLOBAL VARIABLES
    struct Zmienne {
        static var Z_KC_CENA = 1000
        static var Z_KC_OWN: Double = 0
        static var Z_KC_HR: Double = 0
        static var Z_WALLET = 2000
        static var KUPIONE_ZTX220 = 0
        static var KUPIONE_ZTX220T = 0
        static var KUPIONE_MINEPRO2000 = 0
        static var ZTX220PWR: Double = 0.1 // (/100)
        static var ZTX220TPWR = 1 // (/10)
        static var MINEPRO2000PWR = 0.4
        static var CENA_Z220 = 200
        
        
    
    }
    var Timer2: Timer!
    var TimerGodz: Timer!
    var TimerKurs: Timer!
    override func viewDidLoad() {
        super.viewDidLoad()
        KC_CENA.text = String(Zmienne.Z_KC_CENA)
        KC_OWN.text = String(Zmienne.Z_KC_OWN)
        KC_HR.text = String(Zmienne.Z_KC_HR)
        WALLET.text = String(Zmienne.Z_WALLET)
        MINERS.layer.cornerRadius = 24.0
        SHOP.layer.cornerRadius = 24.0
        SELL_KC.layer.cornerRadius = 24.0
        // *******************************************************************
        //Zmienne.Z_KC_HR = (Zmienne.KUPIONE_ZTX220 * Zmienne.ZTX220PWR)
        KC_HR.text = String(Zmienne.Z_KC_HR)
        
        Timer2 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(refresh), userInfo: nil, repeats: true)
       
        TimerGodz = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(refresh2), userInfo: nil, repeats: true)
        TimerKurs = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(refreshKurs), userInfo: nil, repeats: true)
        
    }
    func liczenie(){
        let x = Zmienne.KUPIONE_ZTX220
        let y = Zmienne.ZTX220PWR
        let wynik = (Double(x) * y)
        Zmienne.Z_KC_HR = wynik
        
    }
    
    @objc func refresh2(){
        Zmienne.Z_KC_OWN = (Zmienne.Z_KC_OWN + (Zmienne.Z_KC_HR)/6)
    }
    @objc func refreshKurs(){
        let x = Int.random(in: 300..<2000)
        Zmienne.Z_KC_CENA = x
        
    }
    @objc func refresh(){
        liczenie()
        KC_CENA.text = String(Zmienne.Z_KC_CENA)
        KC_OWN.text = String(format: "%.2f", Zmienne.Z_KC_OWN)
        KC_HR.text = String(format: "%.2f", Zmienne.Z_KC_HR)
        WALLET.text = String(Zmienne.Z_WALLET)
        
        
    }
    
    @IBAction func miners(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "miners_vc") as! MinersViewController
        present(vc, animated: true)
    }
    @IBAction func shop(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "shop_vc") as! ShopViewController
        present(vc, animated: true)
    }
    //tu
    
    @IBAction func sell(_ sender: Any) {
        if Zmienne.Z_KC_OWN >= 1{
            Zmienne.Z_KC_OWN = Zmienne.Z_KC_OWN - 1
            Zmienne.Z_WALLET = Zmienne.Z_WALLET + Zmienne.Z_KC_CENA
            KC_HR.text = String(Zmienne.Z_WALLET)
            
        }else{
            let alert = UIAlertController(title: "You have 0 KanesaCoin", message: "You dont have enough KanesaCoin", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            

            self.present(alert, animated: true)
        }
    }
    

}

