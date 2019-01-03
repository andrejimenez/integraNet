//
//  ResolverViewController.swift
//  AppIntegrar_ProjectoFinal
//
//  Created by alumno on 15/03/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit

class ResolverViewController: UIViewController {

    @IBOutlet weak var imagenPregunta: UIImageView!
    @IBOutlet weak var lbPow: UILabel!
    @IBOutlet weak var lbDivr: UILabel!
    @IBOutlet weak var lbDivd: UILabel!
    @IBOutlet weak var imagenRespuesta: UIImageView!
    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var txt2: UITextField!
    @IBOutlet weak var txt3: UITextField!
    @IBOutlet weak var txt4: UITextField!
    
    @IBOutlet weak var lblMasC: UILabel!
    @IBOutlet weak var lblConstante: UILabel!
    
    @IBOutlet weak var imgmeme: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    var activeField : UITextField?
    
    @IBOutlet weak var btnComprobar: UIButton!
    @IBOutlet weak var imgRespuesta2: UIImageView!
    @IBOutlet weak var btnGenerar: UIButton!
    @IBOutlet weak var textbase: UITextField!
    
    @IBOutlet weak var lbPor: UILabel!
    
    var arrEnabledTypes : [Bool]!
    var iPow : Int!
    var iDivd : Int!
    var iDivr : Int!
    
    var randomNumber2 : Int!
    
    // Para las exponenciales del tipo C^x
    var randNum : Int!
    var Constante : Int!
    
    var dicRespuesta : NSDictionary = ["tipo" : 0, "potencia" : 1, "divisor" : 1, "dividendo" : 1]

    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(ResolverViewController.quitaTeclado))
        
        let app = UIApplication.shared
        NotificationCenter.default.addObserver(self, selector: #selector(aplicacionTerminara(notificacion:)), name: .UIApplicationDidEnterBackground, object: app)
        self.view.addGestureRecognizer(tap)
        
        self.registrarseParaNotificacionesDeTeclado()
        generarPregunta(btnGenerar)

    }
    func dataFilePath() -> String {
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let documentDirectory = paths[0] + "/datos.plist"
        
        print(documentDirectory)
        
        return documentDirectory
    }
    
    // Metodos de Notificacion
    func aplicacionTerminara(notificacion: NSNotification) {
        let bool0 : Bool = arrEnabledTypes[0]
        let bool1 : Bool = arrEnabledTypes[1]
        let bool2 : Bool = arrEnabledTypes[2]
        let bool3 : Bool = arrEnabledTypes[3]
        let bool4 : Bool = arrEnabledTypes[4]
        let arreglo = NSMutableArray(array: [bool0, bool1, bool2, bool3, bool4])
        arreglo.write(toFile: dataFilePath(), atomically: true)
    }
    
    func quitaTeclado() {
        view.endEditing(true)
        imgmeme.isHidden = true
        btnComprobar.isEnabled = true
    }
    
    fileprivate func registrarseParaNotificacionesDeTeclado() {
        NotificationCenter.default.addObserver(self, selector:#selector(ResolverViewController.keyboardWasShown(_:)),
                                               name:NSNotification.Name.UIKeyboardWillShow, object:nil)
        NotificationCenter.default.addObserver(self, selector:#selector(ResolverViewController.keyboardWillBeHidden(_:)),
                                               name:NSNotification.Name.UIKeyboardWillHide, object:nil)
    }
    
    // Sube hasta el textField que se va a editar
    
    func keyboardWasShown (_ aNotification : Notification ) {
        let kbSize = ((aNotification as NSNotification).userInfo![UIKeyboardFrameBeginUserInfoKey]! as AnyObject).cgRectValue.size
        
        let contentInset = UIEdgeInsetsMake(0.0, 0.0, kbSize.height, 0.0)
        scrollView.contentInset = contentInset
        scrollView.scrollIndicatorInsets = contentInset
        
        var bkgndRect : CGRect = scrollView.frame
        bkgndRect.size.height += kbSize.height;
        textbase!.superview!.frame = bkgndRect;
        scrollView.setContentOffset(CGPoint(x: 0.0, y: self.textbase.frame.origin.y-kbSize.height), animated: true)
    }
    
    func keyboardWillBeHidden (_ aNotification : Notification) {
        let contentInsets : UIEdgeInsets = UIEdgeInsets.zero
        scrollView.contentInset = contentInsets;
        scrollView.scrollIndicatorInsets = contentInsets;
    }
    
    // OJO poner atención a este comentario
    // Each text field in the interface sets the view controller as its delegate.
    // Therefore, when a text field becomes active, it calls these methods.
    
    func textFieldDidBeginEditing (_ textField : UITextField ) {
        activeField = textField
    }
    
    func textFieldDidEndEditing (_ textField : UITextField ) {
        activeField = nil
    }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func generarPregunta(_ sender: UIButton) {
        let randomNumber = arc4random() % 4 //randomNumber = tipo de integral que se generará
        
        imgRespuesta2.isHidden = true
        imagenRespuesta.isHidden = false
        txt1.frame.size.width = 69
        txt1.frame.size.width = 40
        txt3.frame.size.width = 68
        
        txt2.isEnabled = true
        txt4.isHidden = true
        txt4.isEnabled = false
        lblMasC.isHidden = true
        lbPor.isHidden = true
        lblConstante.text = ""
        
        txt1.text = "1"
        txt2.text = "1"
        txt3.text = "1"
        txt4.text = "1"
        
        randomNumber2 = Int(randomNumber)
        
        while (arrEnabledTypes[randomNumber2] == false && randomNumber2 != 0 ) {
            
            randomNumber2 = randomNumber2 - 1
            
        }
        while (arrEnabledTypes[randomNumber2] == false  && randomNumber2 != 4 ) {
            randomNumber2 = randomNumber2 + 1
        }
        if (randomNumber2 == 4) {
            randomNumber2 = 0
        }
        
        iPow = Int(arc4random() % 10) + 2
        lbPow.text = String(iPow)
        
        if arrEnabledTypes[4] == false
        {
            iDivd = Int(arc4random() % 10) + 1
            if iDivd >= 20 || iDivd == 1 {
                iDivd = 1
                lbDivd.text = ""
            } else {
                lbDivd.text = String(iDivd)
            }
            
            
            iDivr = 1
            lbDivr.text = ""
        }
        else {
            iDivd = Int(arc4random() % 30) + 1
            if iDivd >= 20 || iDivd == 1 {
                iDivd = 1
                lbDivd.text = ""
            } else {
                lbDivd.text = String(iDivd)
            }
            
            iDivr = Int(arc4random() % 30) + 1
            if iDivr >= 20 || iDivr == 1{
                iDivr = 1
                lbDivr.text = ""
            } else {
                lbDivr.text = String(iDivr)
            }
        }
        
        switch randomNumber2 {
        case 0:
            lblMasC.isHidden = false
            if iDivr == 1 {
                imagenPregunta.image = #imageLiteral(resourceName: "integral potencial 1")
                lbDivd.frame.origin = CGPoint(x: 54, y: 41)
                lbPow.frame.origin = CGPoint(x:115, y: 30)
            } else {
                imagenPregunta.image = #imageLiteral(resourceName: "integral potencial 2")
                lbDivd.frame.origin = CGPoint(x: 54, y: 41)
                lbPow.frame.origin = CGPoint(x:115, y: 30)
                lbDivr.frame.origin = CGPoint(x: 82, y: 84)
            }
            imagenRespuesta.image = #imageLiteral(resourceName: "respPot")
            txt1.frame.origin = CGPoint(x: 55, y: 28)
            txt2.frame.origin = CGPoint(x: 186, y: 6)
            txt3.frame.origin = CGPoint(x:103, y: 100)
            dicRespuesta = calcularPotencial(variables: ["tipo" : 0, "potencia" : iPow, "divisor" : iDivr, "dividendo" : iDivd])
            
            
            break
        case 1:
            lblMasC.isHidden = false
            
            randNum = Int(arc4random() % 4) + 1
            
            if randNum == 1 {
                lbPor.isHidden = false
                txt4.isHidden = false
                txt4.isEnabled = true
                Constante = Int(arc4random() % 11) + 1
                lblConstante.text = String(Constante)
                if lbDivd.text != ""
                {
                    lbDivd.text = lbDivd.text! + " *"
                }
                
                if iDivr == 1 {
                    imagenPregunta.image = #imageLiteral(resourceName: "intregral A 1")
                    lbDivd.frame.origin = CGPoint(x: 51, y: 41)
                    lbPow.frame.origin = CGPoint(x: 116, y: 32)
                    lblConstante.frame.origin = CGPoint(x: 92, y: 47)
                } else {
                    imagenPregunta.image = #imageLiteral(resourceName: "integral A 2")
                    lbDivd.frame.origin = CGPoint(x: 57, y: 22)
                    lbPow.frame.origin = CGPoint(x: 112, y: 13)
                    lbDivr.frame.origin = CGPoint(x: 93, y: 61)
                    lblConstante.frame.origin = CGPoint(x: 99, y: 28)
                }
                
                imagenRespuesta.image = #imageLiteral(resourceName: "respExp")
                txt1.frame.origin = CGPoint(x: 46, y: 21)
                txt2.frame.origin = CGPoint(x: 146, y: 4)
                txt3.frame.origin = CGPoint(x:83, y: 100)
                txt4.frame.origin = CGPoint(x:84, y: 22)
            }
            else {
                if iDivr == 1 {
                    imagenPregunta.image = #imageLiteral(resourceName: "integral exponencial 1")
                    lbDivd.frame.origin = CGPoint(x: 49, y: 39)
                    lbPow.frame.origin = CGPoint(x: 108, y: 39)
                } else {
                    imagenPregunta.image = #imageLiteral(resourceName: "integral exponencial 2")
                    lbDivd.frame.origin = CGPoint(x: 66, y: 16)
                    lbPow.frame.origin = CGPoint(x: 120, y: 14)
                    lbDivr.frame.origin = CGPoint(x: 93, y: 61)
                }
                
                lblMasC.isHidden = true
                imagenRespuesta.image = #imageLiteral(resourceName: "pregExpUser")
                txt1.frame.origin = CGPoint(x: 46, y: 21)
                txt2.frame.origin = CGPoint(x: 111, y: 4)
                txt3.frame.origin = CGPoint(x:83, y: 100)
                txt3.frame.size.width = 47
            }
            dicRespuesta = calcularExponencial(variables: ["tipo" : 1, "potencia" : iPow, "divisor" : iDivr, "dividendo" : iDivd])
            break
            
        case 2:
            lbPow.text = ""
            if iDivr == 1 && iDivd == 1 {
                imagenPregunta.image = #imageLiteral(resourceName: "ln")
                
            } else if iDivd == 1
            {
                imagenPregunta.image = #imageLiteral(resourceName: "lnC2")
                lbDivd.frame.origin = CGPoint(x: 98, y: 43)
                lbDivd.text = lbDivr.text
                lbDivr.text = ""
            } else  if iDivr == 1 {
                
                imagenPregunta.image = #imageLiteral(resourceName: "lnC1")
                lbDivd.frame.origin = CGPoint(x: 56, y: 37)
            } else
            {
                imagenPregunta.image = #imageLiteral(resourceName: "lnC1C2")
                lbDivd.frame.origin = CGPoint(x: 57, y: 40)
                lbDivr.frame.origin = CGPoint(x: 115, y: 44)
            }
            iPow = 1
            imgRespuesta2.isHidden = false
            imagenRespuesta.isHidden = true
            txt1.frame.size.width = 36
            txt3.frame.size.width = 34
            txt1.frame.origin = CGPoint(x: 23, y: 55)
            txt3.frame.origin = CGPoint(x: 99, y: 55)
            txt2.frame.origin = CGPoint(x:182, y: 55)
            txt2.isEnabled = false
            dicRespuesta = calcularLogaritmica(variables: ["tipo" : 1, "potencia" : iPow, "divisor" : iDivr, "dividendo" : iDivd])
            break
        
        case 3:
            let iOtroNumRandom = Int(arc4random() % 6)
            lbDivr.text = ""
            lbPow.text = ""
            switch iOtroNumRandom {
            case 0:
                if iDivd == 1
                {
                    imagenPregunta.image = #imageLiteral(resourceName: "cos")
                } else {
                    imagenPregunta.image = #imageLiteral(resourceName: "cos_c")
                    lbDivd.frame.origin = CGPoint(x: 152, y: 175)
                }
                break
            case 1:
                if iDivd == 1
                {
                    imagenPregunta.image = #imageLiteral(resourceName: "sen")
                } else {
                    imagenPregunta.image = #imageLiteral(resourceName: "sen_c")
                    lbDivd.frame.origin = CGPoint(x: 152, y: 175)
                }
                break
            case 2:
                if iDivd == 1
                {
                    imagenPregunta.image = #imageLiteral(resourceName: "tan")
                } else {
                    imagenPregunta.image = #imageLiteral(resourceName: "tan_c")
                    lbDivd.frame.origin = CGPoint(x: 152, y: 175)
                }
                break
            case 3:
                if iDivd == 1
                {
                    imagenPregunta.image = #imageLiteral(resourceName: "cos2")
                } else {
                    imagenPregunta.image = #imageLiteral(resourceName: "cos2_c")
                    lbDivd.frame.origin = CGPoint(x: 152, y: 175)
                }
                break
            case 4:
                if iDivd == 1
                {
                    imagenPregunta.image = #imageLiteral(resourceName: "sen2")
                } else {
                    imagenPregunta.image = #imageLiteral(resourceName: "sen2_c")
                    lbDivd.frame.origin = CGPoint(x: 152, y: 175)
                }
                break
                
            case 5:
                if iDivd == 1
                {
                    imagenPregunta.image = #imageLiteral(resourceName: "tan2")
                } else {
                    imagenPregunta.image = #imageLiteral(resourceName: "tan2_c")
                    lbDivd.frame.origin = CGPoint(x: 152, y: 175)
                }
                break
                
            default:
                lbDivd.text = ""
                lbPow.text = ""
                lbDivr.text = ""
                break
            }
            break
        default:
            
            lbDivd.text = ""
            lbPow.text = ""
            lbDivr.text = ""
            break
            
        }
    }
    
    func calcularPotencial(variables : NSDictionary) -> NSDictionary {
        var divisor = variables.value(forKey: "divisor") as! Int
        var dividendo = variables.value(forKey: "dividendo") as! Int
        var potencia = variables.value(forKey: "potencia") as! Int
        
        
        potencia = potencia + 1
        divisor = divisor * potencia
        
        var resto : Int = 1
        var divisor2 = divisor
        var MCD = dividendo
        
        while(divisor2 != 0) {
            resto = MCD % divisor2
            MCD = divisor2
            divisor2 = resto
        }
        
        divisor = divisor / MCD
        dividendo = dividendo / MCD
        
        let dicFinal : NSDictionary = ["tipo" : 0, "potencia" : potencia, "divisor" : divisor, "dividendo" : dividendo]
        return dicFinal
    }
    func calcularExponencial(variables : NSDictionary) -> NSDictionary {
        var divisor = variables.value(forKey: "divisor") as! Int
        var dividendo = variables.value(forKey: "dividendo") as! Int
        let potencia = variables.value(forKey: "potencia") as! Int
        
        
        divisor = divisor * potencia
        
        var resto : Int = 1
        var divisor2 = divisor
        var MCD = dividendo
        
        while(divisor2 != 0) {
            resto = MCD % divisor2
            MCD = divisor2
            divisor2 = resto
        }
        
        divisor = divisor / MCD
        dividendo = dividendo / MCD
        
        let dicFinal : NSDictionary = ["tipo" : 1, "potencia" : potencia, "divisor" : divisor, "dividendo" : dividendo]
        return dicFinal
    }
    
    func calcularLogaritmica(variables : NSDictionary) -> NSDictionary {
        let dentrodeLog = variables.value(forKey: "divisor") as! Int
        var dividendo = variables.value(forKey: "dividendo") as! Int
        var potencia = variables.value(forKey: "potencia") as! Int
        
        dividendo = dividendo * potencia
        potencia = 1
        
        let dicFinal : NSDictionary = ["tipo" : 3, "potencia" : potencia, "divisor" : dentrodeLog, "dividendo" : dividendo]
        return dicFinal
    }
    
    @IBAction func comprobar(_ sender: UIButton) {

        let divisor = (dicRespuesta.value(forKey: "divisor") as! Int)
        let dividendo = (dicRespuesta.value(forKey: "dividendo") as! Int)
        let potencia = (dicRespuesta.value(forKey: "potencia") as! Int)
        
        view.endEditing(true)
        btnComprobar.isEnabled = false
        
        if txt1.text == ""
        {
            txt1.text = "1"
        }
        if txt2.text == ""
        {
            txt2.text = "1"
        }
        if txt3.text == ""
        {
            txt3.text = "1"
        }
        if Int(txt1.text!) != nil && Int(txt2.text!) != nil && Int(txt3.text!) != nil
        {
            let divisorUser = Double(txt3.text!)
            let dividendoUser = Double(txt1.text!)
            let potenciaUser = Int(txt2.text!)
            if divisorUser == 0.0
            {
                let mensaje = UIAlertController(title: "división entre 0", message: "Porfavor no pongas 0 en el divisor", preferredStyle: .alert)
                mensaje.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                present(mensaje, animated: true, completion: nil)
                txt3.text = "1"
            }
            else
            {
                if !(randomNumber2 == 1 && randNum == 1 && Constante == Int(txt4.text!) && potencia == potenciaUser && dividendoUser!/divisorUser! == Double(dividendo) / Double(divisor)) && !(randomNumber2 == 2 && dividendoUser == Double(dividendo) && divisorUser == Double(divisor)) && (randomNumber2 == 1 && randNum == 1 || randomNumber2 == 2 || potencia != potenciaUser || dividendoUser!/divisorUser! != Double(dividendo) / Double(divisor))
                {
                    imgmeme.isHidden = false
                    let randomMeme = arc4random() % 8
                    switch(randomMeme)
                    {
                    case 0:
                        imgmeme.image = #imageLiteral(resourceName: "incorrecto1")
                        break
                    case 1:
                        imgmeme.image = #imageLiteral(resourceName: "incorrecto2")
                        break
                    case 2:
                        imgmeme.image = #imageLiteral(resourceName: "incorrecto3")
                        break
                    case 3:
                        imgmeme.image = #imageLiteral(resourceName: "incorrecto5")
                        break
                    case 4:
                        imgmeme.image = #imageLiteral(resourceName: "incorrecto6")
                        break
                    case 5:
                        imgmeme.image = #imageLiteral(resourceName: "incorrecto7")
                        break
                    case 6:
                        imgmeme.image = #imageLiteral(resourceName: "incorrecto8")
                        break
                    case 7:
                        imgmeme.image = #imageLiteral(resourceName: "incorrecto9")
                        break
                    default:
                        break
                    }
                }
                else
                {
                    imgmeme.isHidden = false
                    let randomMeme = arc4random() % 8
                    switch(randomMeme)
                    {
                    case 0:
                        imgmeme.image = #imageLiteral(resourceName: "correcto1")
                        break
                    case 1:
                        imgmeme.image = #imageLiteral(resourceName: "correcto2")
                        break
                    case 2:
                        imgmeme.image = #imageLiteral(resourceName: "correcto3")
                        break
                    case 3:
                        imgmeme.image = #imageLiteral(resourceName: "correcto4")
                        break
                    case 4:
                        imgmeme.image = #imageLiteral(resourceName: "correcto5")
                        break
                    case 5:
                        imgmeme.image = #imageLiteral(resourceName: "correcto6")
                        break
                    case 6:
                        imgmeme.image = #imageLiteral(resourceName: "correcto7")
                        break
                    case 7:
                        imgmeme.image = #imageLiteral(resourceName: "correcto9")
                        break
                    case 8:
                        imgmeme.image = #imageLiteral(resourceName: "correcto10")
                        
                        break
                        
                    case 9:
                        imgmeme.image = #imageLiteral(resourceName: "incorrecto10")
                        break
                
                    default:
                        break
                    }
                    generarPregunta(btnGenerar)
                }
            }
            
            
        } else {
            let mensaje = UIAlertController(title: "¿Y los números?", message: "Porfavor solo pon números enteros", preferredStyle: .alert)
            mensaje.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            present(mensaje, animated: true, completion: nil)
            txt1.text = "1"
            txt2.text = "1"
            txt3.text = "1"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "configuracion" {
            let lugar = segue.destination as! config2ViewController
            lugar.arrEnabledTypes = arrEnabledTypes
            lugar.LoEnvio = false
        } else {
                let lugar = segue.destination as! ViewController
                lugar.arrEnabledTypes = arrEnabledTypes
            }
    }
    @IBAction func unwindConfigura(unwindSegue: UIStoryboardSegue) {
        
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        
        return UIInterfaceOrientationMask.portrait
        
    }
    
    override var shouldAutorotate: Bool {
        
        return false
        
    }
    
    
}
