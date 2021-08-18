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
    @IBOutlet weak var pomoctxt: UILabel!
    @IBOutlet weak var rewardtxt: UILabel!
    
    let userDefaults = UserDefaults()
    
    // GLOBAL VARIABLES
    struct Zmienne {
        static var Z_KC_CENA = Int.random(in: 300..<2000)
        static var Z_KC_OWN: Double = 0
        static var Z_KC_HR: Double = 0
        static var Z_WALLET = 2000
        static var KUPIONE_ZTX220 = 0
        static var KUPIONE_ZTX220T = 0
        static var KUPIONE_MINEPRO2000 = 0
        static var ZTX220PWR: Double = 0.1 // (/100)
        static var ZTX220TPWR: Double = 0.3 // (/10)
        static var MINEPRO2000PWR = 0.4
        static var CENA_Z220 = 200
        static var CENA_Z220T = 500
        static var timestamp = Date().timeIntervalSince1970
        static var delay = 0
        static var startDate = Date()
        static var CurrentDate: Date = Date()
        static var Difference = ""
        static var Reward: Date = Date()
        static var Jebne = ""
        
        
        
    
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
        // timery
        Timer2 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(refresh), userInfo: nil, repeats: true)
        TimerKurs = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(refreshKurs), userInfo: nil, repeats: true)
        //timery\>
        load()
        userDefaults.setValue(Zmienne.startDate, forKey: "startDate_")
        
        
    }
    func liczenie(){
        let x = Zmienne.KUPIONE_ZTX220
        let y = Zmienne.ZTX220PWR
        let z220t = Zmienne.KUPIONE_ZTX220T
        let z220pw = Zmienne.ZTX220TPWR
        
        let wynik = (Double(x) * y) + (Double(z220t) * z220pw)
        Zmienne.Z_KC_HR = wynik
        
    }
    func liczenieDelayP(){
        let formatter = DateComponentsFormatter()
           formatter.allowedUnits = [.second]
        formatter.unitsStyle = .positional
            Zmienne.Difference = formatter.string(from: Zmienne.startDate, to: Zmienne.CurrentDate)!
        pomoctxt.text = Zmienne.Difference
    }
    
    
    func save(){
        userDefaults.setValue(Zmienne.Z_WALLET, forKey: "kasa")
        userDefaults.setValue(Zmienne.Z_KC_OWN, forKey: "kc_own")
        userDefaults.setValue(Zmienne.Z_KC_HR, forKey: "kc_hr")
        userDefaults.setValue(Zmienne.KUPIONE_ZTX220, forKey: "k_z220")
        userDefaults.setValue(Zmienne.KUPIONE_ZTX220T, forKey: "k_z220t")
        userDefaults.setValue(Zmienne.CENA_Z220, forKey: "cena_z220")
        userDefaults.setValue(Zmienne.CENA_Z220T, forKey: "cena_z220t")
        userDefaults.setValue(Zmienne.timestamp, forKey: "tsp")
        userDefaults.setValue(Zmienne.Difference, forKey:"diff")
        
        
        
        
    }
     func load(){
        if let kasa = userDefaults.value(forKey: "kasa") as? Int {
            Zmienne.Z_WALLET = kasa }
        if let kc_own = userDefaults.value(forKey: "kc_own") as? Double {
            Zmienne.Z_KC_OWN = kc_own
        }
        if let kc_hr = userDefaults.value(forKey: "kc_hr") as? Double {
            Zmienne.Z_KC_HR = kc_hr
        }
        if let k_z220 = userDefaults.value(forKey: "k_z220") as? Int {
            Zmienne.KUPIONE_ZTX220 = k_z220
        }
        if let k_z220t = userDefaults.value(forKey: "k_z220t") as? Int{
            Zmienne.KUPIONE_ZTX220T = k_z220t
        }
        
        if let delay = userDefaults.value(forKey: "tsp") as? Int{
            Zmienne.timestamp = TimeInterval(delay)
            
        }
        if let startDate_ = userDefaults.value(forKey: "startDate_") as? Date{
            Zmienne.startDate = startDate_
        }
        if let cena220 = userDefaults.value(forKey: "cena_z220") as? Int{
            Zmienne.CENA_Z220 = cena220
        }
        if let cena220t = userDefaults.value(forKey: "cena_z220t") as? Int{
            Zmienne.CENA_Z220T = cena220t
        }
        
        
        
        
    }
    
    
    
    @objc func refreshKurs(){
        let x = Int.random(in: 300..<2000)
        Zmienne.Z_KC_CENA = x
        
    }
    @objc func refresh(){
        liczenie()
        save()
        Zmienne.CurrentDate = Date()
        liczenieDelayP()
        Zmienne.Z_KC_OWN = (Zmienne.Z_KC_OWN + (Zmienne.Z_KC_HR)/60)
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
    @IBAction func RESET(_ sender: Any) {
        Zmienne.Z_WALLET = 2000
        Zmienne.Z_KC_HR = 0
        Zmienne.Z_KC_OWN = 0
        Zmienne.KUPIONE_ZTX220 = 0
        Zmienne.KUPIONE_ZTX220T = 0
        Zmienne.CENA_Z220 = 200
        Zmienne.CENA_Z220T = 500
        Zmienne.startDate = Date()
        userDefaults.setValue(Zmienne.startDate, forKey: "startDate_")
        
        
    }
    
    

}

