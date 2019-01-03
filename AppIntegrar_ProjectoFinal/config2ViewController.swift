//
//  config2ViewController.swift
//  AppIntegrar_ProjectoFinal
//
//  Created by alumno on 20/04/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit

class config2ViewController: UIViewController {

    @IBOutlet weak var Potencial: UISwitch!
    @IBOutlet weak var Exponencial: UISwitch!
    @IBOutlet weak var Logaritmica: UISwitch!
    @IBOutlet weak var Trigonometrica: UISwitch!
    
    @IBOutlet weak var segNivel: UISegmentedControl!
    
    var arrEnabledTypes : [Bool]!
    var LoEnvio : Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Trigonometrica.isHidden = true
        
        
        // Do any additional setup after loading the view.
        Potencial.isOn = arrEnabledTypes[0]
        Exponencial.isOn = arrEnabledTypes[1]
        Logaritmica.isOn = arrEnabledTypes[2]
        Trigonometrica.isOn = arrEnabledTypes[3]
        if arrEnabledTypes[4] == true
        {
            segNivel.selectedSegmentIndex = 1
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func activar(_ sender: UISwitch) {
        
        if Trigonometrica.isOn
        {
            Trigonometrica.isOn = false
        }
        
        if (Potencial.isOn == false && Exponencial.isOn == false && Logaritmica.isOn == false && Trigonometrica.isOn == false)
        {
            let randomNumber = arc4random() % 3 + 1
            switch (randomNumber)
            {
            case 1:
                Potencial.isOn = true
                break
            case 2:
                Exponencial.isOn = true
                break
            case 3:
                Logaritmica.isOn = true
                break
            case 4:
                Trigonometrica.isOn = true
                break
            default:
                break
                
            }
            
        }
        arrEnabledTypes[0] = Potencial.isOn
        arrEnabledTypes[1] = Exponencial.isOn
        arrEnabledTypes[2] = Logaritmica.isOn
        arrEnabledTypes[3] = Trigonometrica.isOn
    }
    
    
    @IBAction func cambiarNivel(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0
        {
            arrEnabledTypes[4] = false
        }
        else
        {
            arrEnabledTypes[4] = true
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
         let lugar = segue.destination as! ResolverViewController
         lugar.arrEnabledTypes = arrEnabledTypes
         
        
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        
        return UIInterfaceOrientationMask.portrait
        
    }
    
    override var shouldAutorotate: Bool {
        
        return false
        
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */


}
