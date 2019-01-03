//
//  ViewController.swift
//  AppIntegrar_ProjectoFinal
//  
//  Created by alumno on 08/03/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewIntegral: UIView!
    @IBOutlet weak var viewIntegralSuma: UIView!
    @IBOutlet weak var viewIS1: UIView!
    @IBOutlet weak var viewIS2: UIView!
    @IBOutlet weak var viewIS3: UIView!
    @IBOutlet weak var viewIS4: UIView!
    
    @IBOutlet weak var btnMostrarSolucion: UIButton!
    @IBOutlet weak var viewRespuesta: UIView!
    
    @IBOutlet weak var imageIntegralSuma: UIImageView!
    @IBOutlet weak var imageIS1: UIImageView!
    @IBOutlet weak var imageIS2: UIImageView!
    @IBOutlet weak var imageIS3: UIImageView!
    @IBOutlet weak var imageIS4: UIImageView!
    
    @IBOutlet weak var imageIntegral: UIImageView!
    @IBOutlet weak var imageSolucion: UIImageView!
    
    @IBOutlet weak var bBack: UIButton!
    @IBOutlet weak var bNext: UIButton!

    @IBOutlet weak var lbPow: UILabel!
    @IBOutlet weak var lbDividendo: UILabel!
    @IBOutlet weak var lbDivisor: UILabel!
    @IBOutlet weak var lbConstante: UILabel!

    @IBOutlet weak var lbConstante2: UILabel!
    @IBOutlet weak var lbN: UILabel!
    @IBOutlet weak var lbNumerador: UILabel!
    @IBOutlet weak var lbDenominador: UILabel!
    @IBOutlet weak var lbPotencia: UILabel!
    @IBOutlet weak var lbLogNatural: UILabel!
    
    @IBOutlet weak var btnAtras: UIButton!
    @IBOutlet weak var btnAdelante: UIButton!
    
    //LABELS PARA LA VIEW DE LA INTEGRAL DE SUMA 
    @IBOutlet weak var lbDivisorSuma: UILabel!
    @IBOutlet weak var lbPotenciaDivisor: UILabel!
    
    @IBOutlet weak var lbConstant1: UILabel!
    @IBOutlet weak var lbPotenciaC1: UILabel!
    
    @IBOutlet weak var lbConstant2: UILabel!
    @IBOutlet weak var lbPotenciaC2: UILabel!
   
    @IBOutlet weak var lbConstant3: UILabel!
    @IBOutlet weak var lbPotenciaC3: UILabel!
    
    @IBOutlet weak var lbCons1: UILabel!
    @IBOutlet weak var lbCons2: UILabel!
    @IBOutlet weak var lbCons3: UILabel!
    
    @IBOutlet weak var lbPot1: UILabel!
    @IBOutlet weak var lbPot2: UILabel!
    @IBOutlet weak var lbPot3: UILabel!
    
    @IBOutlet weak var lbDen1: UILabel!
    @IBOutlet weak var lbDen2: UILabel!
    @IBOutlet weak var lbDen3: UILabel!
    
    @IBOutlet weak var lbPotDen1: UILabel!
    @IBOutlet weak var lbPotDen2: UILabel!
    @IBOutlet weak var lbPotDen3: UILabel!

    @IBOutlet weak var lbN1: UILabel!
    @IBOutlet weak var lbNum1: UILabel!
    @IBOutlet weak var lbPow1: UILabel!
    @IBOutlet weak var lbDiv1: UILabel!
    
    @IBOutlet weak var lbN2: UILabel!
    @IBOutlet weak var lbNum2: UILabel!
    @IBOutlet weak var lbPow2: UILabel!
    @IBOutlet weak var lbDiv2: UILabel!
    
    @IBOutlet weak var lbN3: UILabel!
    @IBOutlet weak var lbNum3: UILabel!
    @IBOutlet weak var lbPow3: UILabel!
    @IBOutlet weak var lbDiv3: UILabel!
    
    @IBOutlet weak var lbNum1Fin: UILabel!
    @IBOutlet weak var lbNum2Fin: UILabel!
    @IBOutlet weak var lbNum3Fin: UILabel!
    @IBOutlet weak var lbDiv1Fin: UILabel!
    @IBOutlet weak var lbDiv2Fin: UILabel!
    @IBOutlet weak var lbDiv3Fin: UILabel!
    @IBOutlet weak var lbPow1Fin: UILabel!
    @IBOutlet weak var lbPow2Fin: UILabel!
    @IBOutlet weak var lbPow3Fin: UILabel!
    
    // FIN LABELS PARA LA VIEW DE INTEGRAL DE SUMA
    
    @IBOutlet weak var lbS1Pow2: UILabel!
    @IBOutlet weak var lbS1Divisor: UILabel!
    @IBOutlet weak var lbS1N2: UILabel!
    @IBOutlet weak var lbS1Num2: UILabel!
    @IBOutlet weak var lbS1Divdnd1: UILabel!
    @IBOutlet weak var lbS1Divdnd2: UILabel!
    @IBOutlet weak var lbPregDivdnd3: UILabel!
    @IBOutlet weak var lbPregDivsr3: UILabel!
    @IBOutlet weak var lbPregDnExp3: UILabel!
    @IBOutlet weak var lbPregDsExp3: UILabel!
    @IBOutlet weak var lbPregDivdnd2: UILabel!
    @IBOutlet weak var lbPregDivsr2: UILabel!
    @IBOutlet weak var lbPregDnExp2: UILabel!
    @IBOutlet weak var lbPregDsExp2: UILabel!
    @IBOutlet weak var lbPregDivdnd1: UILabel!
    @IBOutlet weak var lbPregDivsr1: UILabel!
    @IBOutlet weak var lbPregDnExp1: UILabel!
    @IBOutlet weak var lbPregDsExp1: UILabel!

    

    
    var dic : NSDictionary = ["tipo" : 0, "potencia" : 1, "divisor" : 1, "dividendo" : 1]
    var arrEnabledTypes : [Bool] = [true, false, false, false, false]
    
    var iPow : Int! // Potencia
    var iDivd : Int! // Dividendo
    var iDivr : Int! // Divisor
    var iConstante : Int! // Constante para integral de A
    
    
    var iConstant1 : Int!
    var iConstant2 : Int!
    var iConstant3 : Int!
    
    var iPotencia1 : Int!
    var iPotencia2 : Int!
    var iPotencia3 : Int!
    
    var iDivisor : Int!
    var iPotenciaD : Int!
    
    //VARIABLES PARA CONTADORES DE PAGINAS Y VIEWS DE RESPUESTAS
    var iPaginas : Int = 0
    var iPosView : Int = 0
    
    //FIN DE DECLARACION DE VARIABLES
    
    var iOtroNumRandom: Int!
    var iTipo : Int! // VARIABLE QUE DECIDE QUE TIPO DE INTEGRAL POTENCIAL SE RESOLVERÁ
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let app = UIApplication.shared
        NotificationCenter.default.addObserver(self, selector: #selector(aplicacionTerminara(notificacion:)), name: .UIApplicationDidEnterBackground, object: app)
        
        let filePath = dataFilePath()
        if FileManager.default.fileExists(atPath: filePath) {
            let arreglo = NSArray(contentsOfFile: filePath)
            arrEnabledTypes[0] = arreglo![0] as! Bool
            arrEnabledTypes[1] = arreglo![1] as! Bool
            arrEnabledTypes[2] = arreglo![2] as! Bool
            arrEnabledTypes[3] = arreglo![3] as! Bool
            arrEnabledTypes[4] = arreglo![4] as! Bool
        }
        else {
            arrEnabledTypes = [true, false, false, false, false]
        }
        viewRespuesta.isHidden = true
        lbPow.text = ""
        lbDivisor.text = ""
        lbDividendo.text = ""
        lbConstante.text = ""
        
        viewIntegralSuma.isHidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
   
    
    
    @IBAction func mostrarSolucion(_ sender: UIButton) {
        viewRespuesta.isHidden = false
        if iPaginas > 1 {
            btnAdelante.isHidden = false
        }
        btnMostrarSolucion.setImage(#imageLiteral(resourceName: "Maxi_Andes_Blanco"), for: UIControlState.normal)
    }
    
    
    @IBAction func GenerarPregunta(_ sender: UIButton) {
        let randomNumber = arc4random() % 4 //randomNumber = tipo de integral que se generará
        var randomNumber2 : Int!
        btnMostrarSolucion.isEnabled = true
        btnMostrarSolucion.setImage(#imageLiteral(resourceName: "btnMostrarSolucion"), for: UIControlState.normal)
        viewRespuesta.isHidden = true
        
        iPaginas = 0
        iPosView = 0
        
        viewIntegralSuma.isHidden = true
        viewIS1.isHidden = true
        viewIS2.isHidden = true
        viewIS3.isHidden = true
        viewIS4.isHidden = true
        btnAtras.isHidden = true
        btnAdelante.isHidden = true
 
        lbN.text = ""
        lbLogNatural.text = ""
        lbConstante2.text = ""
        lbDenominador.text = ""
        lbNumerador.text = ""
        lbPotencia.text = ""
        lbPot2.text = ""
        lbPot1.text = ""
        lbPot3.text = ""
        lbDen1.text = ""
        lbDen2.text = ""
        lbDen3.text = ""
        lbCons1.text = ""
        lbCons2.text = ""
        lbCons3.text = ""
        lbPotDen1.text = ""
        lbPotDen2.text = ""
        lbPotDen3.text = ""
        lbN1.text = ""
        lbNum1.text = ""
        lbPow1.text = ""
        lbDiv1.text = ""
        lbNum2.text = ""
        lbPow2.text = ""
        lbDiv2.text = ""
        lbN2.text = ""
        lbNum3.text = ""
        lbPow3.text = ""
        lbDiv3.text = ""
        lbN3.text = ""
        lbPow.text = ""
        lbDividendo.text = ""
        lbDivisor.text = ""
        lbConstante.text = ""
        lbS1Divisor.text = ""
        lbS1Pow2.text = ""
        lbS1N2.text = ""
        lbS1Num2.text = ""
        lbS1Divdnd1.text = ""
        lbS1Divdnd2.text = ""
        lbPregDivdnd3.text = ""
        lbPregDivsr3.text = ""
        lbPregDnExp3.text = ""
        lbPregDsExp3.text = ""
        lbPregDivdnd1.text = ""
        lbPregDivsr1.text = ""
        lbPregDnExp1.text = ""
        lbPregDsExp1.text = ""
        lbPregDivdnd2.text = ""
        lbPregDivsr2.text = ""
        lbPregDnExp2.text = ""
        lbPregDsExp2.text = ""
        lbPow3.font = UIFont(name: lbPow3.font.fontName, size: 17)
        lbS1Divisor.font = UIFont(name: lbS1Divisor.font.fontName, size: 30)
        lbS1Divdnd1.font = UIFont(name: lbS1Divdnd1.font.fontName, size: 27)

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
        
        iPow = Int(arc4random() % 9) + 1
        
        if iPow == 1 {
            iPow = 1
            lbPow.text = ""
        } else {
            lbPow.text = String(iPow)
        }
        if arrEnabledTypes[4] == true {
            iDivd = Int(arc4random() % 30) + 1
            if iDivd >= 20 || iDivd == 1 {
                iDivd = 1
                lbDividendo.text = ""
            } else {
                lbDividendo.text = String(iDivd)
            }
            
            iDivr = Int(arc4random() % 30) + 1
            if iDivr >= 20 || iDivr == 1 {
                iDivr = 1
                lbDivisor.text = ""
            } else {
                lbDivisor.text = String(iDivr)
            }
        }
        else {
            iDivd = Int(arc4random() % 10) + 1
            if iDivd >= 20 || iDivd == 1 {
                iDivd = 1
                lbDividendo.text = ""
            } else {
                lbDividendo.text = String(iDivd)
            }
            
            iDivr = 1
            lbDivisor.text = ""
        }
    
    switch (randomNumber2) {
        case 0: //Mandar llamar funcion potencial
            
            iTipo = Int(arc4random() % 5) + 1
            if arrEnabledTypes[4] == false
            {
                iTipo = 3
            }
            
            if iTipo < 3 {
                iPaginas = 5
                viewIntegralSuma.isHidden = false
                imageIntegralSuma.image = #imageLiteral(resourceName: "Integral Potencial sum")
                imageSolucion.image = #imageLiteral(resourceName: "Solucion Suma Potencial")
                
                //OBTENER LOS VALORES DE LA VIEW INTEGRAL SUMA
                iConstant1 = Int(arc4random() % 14) + 2
                lbConstant1.text = String(iConstant1)
                lbCons1.text = lbConstant1.text
                
                iConstant2 = Int(arc4random() % 14) + 2
                lbConstant2.text = String(iConstant2)
                lbCons2.text = lbConstant2.text
                
                iConstant3 = Int(arc4random() % 14) + 2
                lbConstant3.text = String(iConstant3)
                lbCons3.text = lbConstant3.text
                
                iDivisor = Int(arc4random() % 13) + 17
                lbDivisorSuma.text = String(iDivisor)
                lbDen1.text = lbDivisorSuma.text
                lbDen2.text = lbDivisorSuma.text
                lbDen3.text = lbDivisorSuma.text
                
                iPotenciaD = Int(arc4random() % 5) + 2
                lbPotenciaDivisor.text = String(iPotenciaD)
                lbPotDen1.text = lbPotenciaDivisor.text
                lbPotDen2.text = lbPotenciaDivisor.text
                lbPotDen3.text = lbPotenciaDivisor.text
                
                iPotencia1 = (iPotenciaD * 2) - 1
                lbPotenciaC1.text = String(iPotencia1)
                lbPot1.text = lbPotenciaC1.text
                
                iPotencia2 = (iPotenciaD * 3) - 3
                lbPotenciaC2.text = String(iPotencia2)
                lbPot2.text = lbPotenciaC2.text
                
                iPotencia3 = (iPotenciaD * 4) - 4
                lbPotenciaC3.text = String(iPotencia3)
                lbPot3.text = lbPotenciaC3.text
                
                lbCons1.frame.origin = CGPoint(x: 37, y: 27)
                lbCons2.frame.origin = CGPoint(x: 139, y: 27)
                lbCons3.frame.origin = CGPoint(x: 242, y: 27)
                lbDen1.frame.origin = CGPoint(x: 37, y: 65)
                lbDen2.frame.origin = CGPoint(x: 139, y: 65)
                lbDen3.frame.origin = CGPoint(x: 242, y: 65)
                lbPot1.frame.origin = CGPoint(x: 80, y: 14)
                lbPot2.frame.origin = CGPoint(x: 182, y: 14)
                lbPot3.frame.origin = CGPoint(x: 284, y: 14)
                lbPotDen1.frame.origin = CGPoint(x: 80, y: 56)
                lbPotDen2.frame.origin = CGPoint(x: 182, y: 56)
                lbPotDen3.frame.origin = CGPoint(x: 284, y: 56)
                
                //FIN DE LA OBTENCION DE VALORES DE LA VIEW INTEGRAL SUMA
                
                dic = ["tipo" : randomNumber2, "divisor" : iDivisor, "potenciadivisor" : iPotenciaD, "potencia1" : iPotencia1
                    , "dividendo1" : iConstant1, "potencia2" : iPotencia2 , "dividendo2" : iConstant2, "potencia3" : iPotencia3 , "dividendo3" : iConstant3]
                
                while !calcularSumasPotencial(variables: dic) {
                    
                }

            
            } else {
                //Integral potencial de solo un elemento
                
                iPaginas = 2
                
                //Si la division es entre uno no se pone el símbolo de división
                if iDivr == 1 {
                    imageIntegral.image = #imageLiteral(resourceName: "integral potencial 1")
                    imageSolucion.image = #imageLiteral(resourceName: "potencial_R3")
                    imageIS1.image = #imageLiteral(resourceName: "potencial_R6")
                    
                    //View pregunta
                    
                    lbDividendo.frame.origin = CGPoint(x: 36, y: 39)
                    lbPow.frame.origin = CGPoint(x: 114, y: 17)
                    
                    //View Respuesta
                    
                    lbCons3.text = String(iDivr)
                    
                    lbPotDen1.frame.origin = CGPoint(x: 108, y: 86)
                    lbCons3.frame.origin = CGPoint(x: 241, y: 86)
                    lbNumerador.frame.origin = CGPoint(x: 89, y: 148)
                    lbPotencia.frame.origin = CGPoint(x: 159, y: 108)
                    lbLogNatural.frame.origin = CGPoint(x: 139, y: 168)
                    lbS1Divdnd1.frame.origin = CGPoint(x: 30, y: 26)
                    
                    //View IS1
                    
                    lbPow1.frame.origin = CGPoint(x: 144, y: 3)
                    lbS1Pow2.frame.origin = CGPoint(x: 117, y: 110)
                    lbN1.frame.origin = CGPoint(x: 17, y: 148)
                    lbDiv1.frame.origin = CGPoint(x: 89, y: 62)
                    lbS1Divisor.frame.origin = CGPoint(x: 89, y: 180)
                    
                    lbS1Divisor.font = UIFont(name: lbS1Divisor.font.fontName, size: 27)
                    
                } else {
                    imageIntegral.image = #imageLiteral(resourceName: "integral potencial 2")
                    imageSolucion.image = #imageLiteral(resourceName: "potencial_R1")
                    imageIS1.image = #imageLiteral(resourceName: "potencial_R2")
                    
                    //View Pregunta
                    
                    lbDividendo.frame.origin = CGPoint(x: 36, y: 39)
                    lbPow.frame.origin = CGPoint(x: 114, y: 17)
                    lbDivisor.frame.origin = CGPoint(x:72, y:91)
                    
                    //View Respuesta
                    
                    lbCons3.text = String(iDivr)
                    
                    lbPotDen1.frame.origin = CGPoint(x: 108, y: 86)
                    lbCons3.frame.origin = CGPoint(x: 241, y: 86)
                    lbNumerador.frame.origin = CGPoint(x: 89, y: 126)
                    lbPotencia.frame.origin = CGPoint(x: 150, y: 108)
                    lbLogNatural.frame.origin = CGPoint(x: 169, y: 167)
                    lbDenominador.frame.origin = CGPoint(x: 86, y: 166)
                    lbS1Divdnd1.frame.origin = CGPoint(x: 60, y: 18)
                    //View IS1
                    
                    lbNum1.text = lbCons3.text
                    
                    lbN1.frame.origin = CGPoint(x: 27, y: 149)
                    lbPow1.frame.origin = CGPoint(x: 155, y: 0)
                    lbS1Pow2.frame.origin = CGPoint(x: 105, y: 123)
                    lbDiv1.frame.origin = CGPoint(x: 191, y: 65)
                    lbNum1.frame.origin = CGPoint(x: 36, y: 65)
                    lbS1Divisor.frame.origin = CGPoint(x: 78, y: 185)
                    
                    
                }
                
                
                dic = ["tipo" : randomNumber2, "potencia" : iPow, "divisor" : iDivr, "dividendo" : iDivd]
                
                let resultadoFinal = calcularPotencial(variables: dic)
                
                
                // View Respuesta
                
                lbPotDen1.text = String(iPow)
                
                lbNumerador.text = lbDividendo.text
                lbDenominador.text = lbDivisor.text
                lbPotencia.text = String(resultadoFinal.value(forKey: "potencia") as! Int)
                lbLogNatural.text = String(resultadoFinal.value(forKey: "potencia") as! Int)
                
                //View IS1
                
                lbPow1.text = lbPotencia.text
                lbS1Pow2.text = lbPotencia.text
                lbDiv1.text = lbPotencia.text
                lbS1Divdnd1.text = lbDividendo.text
                lbN1.text = String(resultadoFinal.value(forKey: "dividendo") as! Int)
                if lbN1.text == "1" {
                    lbN1.text = ""
                }

                lbS1Divisor.text = String(resultadoFinal.value(forKey: "divisor") as! Int)
                
            }
            
            break
        
        case 1: //Mandar llamar funcion exponencial
            
            var randomExponencial = arc4random() % 2 + 1
            iPaginas = 2
            if arrEnabledTypes[4] == false {
                randomExponencial = 1
            }
            if iDivr == 1 && randomExponencial == 1 {
                imageIntegral.image = #imageLiteral(resourceName: "integral exponencial 1")
                imageSolucion.image = #imageLiteral(resourceName: "exponencialM_R3_V2")
                imageIS1.image = #imageLiteral(resourceName: "exponencialM_R2-1")
                
                
                //View Pregunta
                
                lbPow.frame.origin = CGPoint(x: 100, y: 28)
                lbDividendo.frame.origin = CGPoint(x: 32, y: 42)
                
                
                //View Respuesta
                
                lbN.frame.origin = CGPoint(x: 86, y: 70)
                lbNumerador.frame.origin = CGPoint(x: 76, y: 154)
                lbDenominador.frame.origin = CGPoint(x: 162, y: 170)
                lbPotencia.frame.origin = CGPoint(x: 176, y: 122)
                
                
                //View IS1
                
                lbPow1.frame.origin = CGPoint(x: 140, y: 8)
                lbDiv1.frame.origin = CGPoint(x: 124, y: 67)
                lbS1Pow2.frame.origin = CGPoint(x: 131, y: 113)
                lbS1Divisor.frame.origin = CGPoint(x: 116, y: 177)
                lbS1Divdnd1.frame.origin = CGPoint(x: 25, y: 42)
                lbS1Divdnd2.frame.origin = CGPoint(x: 17, y: 148)
                
            } else if iDivr != 1 && randomExponencial == 1 {
                imageIntegral.image = #imageLiteral(resourceName: "integral exponencial 2")
                imageSolucion.image = #imageLiteral(resourceName: "exponencialM_R1_V2")
                imageIS1.image = #imageLiteral(resourceName: "exponencialM_R2-1")
                
                //View pregunta
                
                lbPow.frame.origin = CGPoint(x: 120, y: 0)
                lbDividendo.frame.origin = CGPoint(x: 46, y: 12)
                lbDivisor.frame.origin = CGPoint(x: 85, y: 63)
                
                
                //View respuesta
                
                lbCons2.text = lbDivisor.text
                
                lbN.frame.origin = CGPoint(x: 86, y: 70)
                lbNumerador.frame.origin = CGPoint(x: 65, y: 142)
                lbDenominador.frame.origin = CGPoint(x: 175, y: 169)
                lbPotencia.frame.origin = CGPoint(x: 189, y: 125)
                lbCons2.frame.origin = CGPoint(x: 74, y: 169)
                
                
                //View IS1
                
                lbPow1.frame.origin = CGPoint(x: 140, y: 8)
                lbDiv1.frame.origin = CGPoint(x: 124, y: 67)
                lbS1Pow2.frame.origin = CGPoint(x: 131, y: 113)
                lbS1Divisor.frame.origin = CGPoint(x: 116, y: 177)
                lbS1Divdnd1.frame.origin = CGPoint(x: 25, y: 42)
                lbS1Divdnd2.frame.origin = CGPoint(x: 17, y: 148)

            }   else if iDivr == 1 && randomExponencial == 2 {
                imageIntegral.image = #imageLiteral(resourceName: "intregral A 1")
                imageSolucion.image = #imageLiteral(resourceName: "exponencial_a_R1")
                imageIS1.image = #imageLiteral(resourceName: "exponencial_a_R2")
                
                if lbDividendo.text != "" {
                    lbDividendo.text = lbDividendo.text! + " *"
                }
                
                // View Pregunta
                
                lbPow.frame.origin = CGPoint(x: 115, y: 22)
                lbDividendo.frame.origin = CGPoint(x: 36, y: 45)
                
                    // La constante C en C^x de la pregunta
                lbConstante.frame.origin = CGPoint(x: 90, y: 50)
                
                
                //View Respuesta
                lbN.frame.origin = CGPoint(x: 92, y: 79)
                lbConstante2.frame.origin = CGPoint(x: 121, y: 140)
                lbNumerador.frame.origin = CGPoint(x: 65, y: 142)
                lbDenominador.frame.origin = CGPoint(x: 83, y: 174)
                lbPotencia.frame.origin = CGPoint(x: 156, y: 119)
                lbLogNatural.frame.origin = CGPoint(x: 234, y: 88)
                lbCons1.frame.origin = CGPoint(x: 201, y: 173)
                
                //View IS1
                
                lbPow1.frame.origin = CGPoint(x: 167, y: 8)
                lbN1.frame.origin = CGPoint(x: 119, y: 18)
                lbDiv1.frame.origin = CGPoint(x: 61, y: 67)
                lbNum1.frame.origin = CGPoint(x: 82, y: 133)
                lbS1Pow2.frame.origin = CGPoint(x: 119, y: 119)
                lbS1Divisor.frame.origin = CGPoint(x: 25, y: 184)
                lbS1N2.frame.origin = CGPoint(x: 201, y: 73)
                lbS1Num2.frame.origin = CGPoint(x: 158, y: 187)
                lbS1Divdnd1.frame.origin = CGPoint(x: 61, y: 26)
                lbS1Divdnd2.frame.origin = CGPoint(x: 17, y: 142)
                
            
            } else /*if iDivr != 1 && randomExponencial == 2*/  {
                imageIntegral.image = #imageLiteral(resourceName: "integral A 2")
                imageSolucion.image = #imageLiteral(resourceName: "exponencial_a_R3")
                imageIS1.image = #imageLiteral(resourceName: "exponencial_a_R2")
                
                if lbDividendo.text != "" {
                    lbDividendo.text = lbDividendo.text! + " *"
                }
                
                //View Pregunta
                
                lbPow.frame.origin = CGPoint(x: 115, y: 0)
                lbDividendo.frame.origin = CGPoint(x: 45, y: 18)
                lbDivisor.frame.origin = CGPoint(x: 89, y: 71)
                
                    // La constante C en C^x de la pregunta
                lbConstante.frame.origin = CGPoint(x: 99, y: 23)
                
                //View Respuesta
                
                lbCons2.text = lbDivisor.text
                
                lbCons1.frame.origin = CGPoint(x: 217, y: 174)
                lbCons2.frame.origin = CGPoint(x: 65, y: 173)
                lbN.frame.origin = CGPoint(x: 86, y: 72)
                lbConstante2.frame.origin = CGPoint(x: 121, y: 140)
                lbNumerador.frame.origin = CGPoint(x: 77, y: 142)
                lbDenominador.frame.origin = CGPoint(x: 115, y: 174)
                lbPotencia.frame.origin = CGPoint(x: 155, y: 124)
                lbLogNatural.frame.origin = CGPoint(x: 217, y: 81)
                lbDivisor.frame.origin = CGPoint(x: 86, y: 105)
                lbCons3.frame.origin = CGPoint(x:86, y:105)
                
                //View IS1
                
                lbPow1.frame.origin = CGPoint(x: 167, y: 8)
                lbN1.frame.origin = CGPoint(x: 119, y: 18)
                lbDiv1.frame.origin = CGPoint(x: 61, y: 67)
                lbNum1.frame.origin = CGPoint(x: 82, y: 133)
                lbS1Pow2.frame.origin = CGPoint(x: 119, y: 119)
                lbS1Divisor.frame.origin = CGPoint(x: 25, y: 184)
                lbS1N2.frame.origin = CGPoint(x: 201, y: 73)
                lbS1Num2.frame.origin = CGPoint(x: 158, y: 187)
                lbS1Divdnd1.frame.origin = CGPoint(x: 61, y: 26)
                lbS1Divdnd2.frame.origin = CGPoint(x: 17, y: 142)
            }
            
            // Tipo de exponencial que utiliza C^x aquí se genera la C
            if randomExponencial == 2 {
                
                iConstante = Int(arc4random() % 20) + 1
                
                //View Pregunta
                
                lbConstante.text = String(iConstante)
                
                //View Respuesta
                
                lbLogNatural.text = lbConstante.text
                lbConstante2.text = lbConstante.text
                lbN1.text = lbConstante.text
                lbS1N2.text = lbConstante.text
                lbNum1.text = lbConstante.text
                lbS1Num2.text = lbConstante.text
                
                lbCons1.text = lbConstante.text
                
                
            }
            
            dic = ["tipo" : randomNumber2, "potencia" : iPow, "divisor" : iDivr, "dividendo" : iDivd]
            
            let resultadoFinal = calcularExponencial(variables: dic)
            
            lbN.text = String(iPow)
            lbNumerador.text = lbDividendo.text
            if randomExponencial == 1 && iDivr != 1 && iDivd == 1
            {
                lbNumerador.text = "1"
            }
            lbDenominador.text = lbN.text
            lbPotencia.text = String(resultadoFinal.value(forKey: "potencia") as! Int)
            
            lbDiv1.text = String(iPow * iDivr)
            lbS1Divdnd1.text = lbDividendo.text
            
            lbS1Divdnd2.text = String(resultadoFinal.value(forKey: "dividendo") as! Int)
            if lbS1Divdnd2.text == "1" {
                lbS1Divdnd2.text = ""
            }
            else
            {
                lbS1Divdnd2.text = lbS1Divdnd2.text! + " *"
            }
            lbS1Divisor.text = String(resultadoFinal.value(forKey: "divisor") as! Int)
            lbPow1.text = lbN.text
            lbS1Pow2.text = lbN.text
            
            if randomExponencial == 2
            {
                lbCons3.text = lbDivisor.text
            }
            
            break
        
        case 2:
            
            iPaginas = 4
            viewIntegralSuma.isHidden = true
            let iValor = iDivd * iPow //LET QUE SE USA EN LAS INTEGRALES LOGARITMICAS CUANDO MULTIPLICA CONSTANTE CON EXPONENTE
            
            if iDivd == 1 && iDivr == 1 && iPow == 1 {// MOSTRARA LA DE LN
                imageIntegral.image = #imageLiteral(resourceName: "ln")
                imageSolucion.image = #imageLiteral(resourceName: "ln_R1")
                imageIS1.image = #imageLiteral(resourceName: "ln_R2")
                imageIS2.image = #imageLiteral(resourceName: "ln_R3")
                imageIS3.image = #imageLiteral(resourceName: "ln_R4")
                
            } else if iDivd == 1 && iPow == 1 {// MOSTRARA LA DE LNC2
                imageIntegral.image = #imageLiteral(resourceName: "lnC2")
                lbDivisor.frame.origin = CGPoint(x: 94, y: 45)
                
                imageSolucion.image = #imageLiteral(resourceName: "ln_A_R1")
                imageIS1.image = #imageLiteral(resourceName: "ln_A_R2")
                
                imageIS2.image = #imageLiteral(resourceName: "ln_A_R3")
                lbN2.text = lbDivisor.text
                lbN2.frame.origin = CGPoint(x: 65, y: 136)
                lbPow2.text = lbDivisor.text
                lbPow2.frame.origin = CGPoint(x: 75, y: -8)
                
                imageIS3.image = #imageLiteral(resourceName: "ln_A_R4")
                lbN3.text = lbDivisor.text
                lbN3.frame.origin = CGPoint(x: 87, y: 47)
                lbNum3.text = lbDivisor.text
                lbNum3.frame.origin = CGPoint(x: 87, y: 181)
                
                
            } else if iDivr == 1 && iPow == 1 { // MOSTRARA LA DE LNC1
                imageIntegral.image = #imageLiteral(resourceName: "lnC1")
                lbDividendo.frame.origin = CGPoint(x: 50, y: 38)
                
                imageSolucion.image = #imageLiteral(resourceName: "ln_C_R1")
                imageIS1.image = #imageLiteral(resourceName: "ln_C_R2")
                
                imageIS2.image = #imageLiteral(resourceName: "ln_C_R3")
                lbN2.text = lbDividendo.text
                lbN2.frame.origin = CGPoint(x: 30, y: 137)
                
                imageIS3.image = #imageLiteral(resourceName: "ln_C_R4")
                lbN3.text = lbDividendo.text
                lbN3.frame.origin = CGPoint(x: 40, y: 47)
                lbNum3.text = lbDividendo.text
                lbNum3.frame.origin = CGPoint(x: 40, y: 181)
                
            } else if iPow == 1 { // MOSTRARA LA DE LNC1C2
                imageIntegral.image = #imageLiteral(resourceName: "lnC1C2")
                lbDividendo.frame.origin = CGPoint(x: 37, y: 40)
                lbDivisor.frame.origin = CGPoint(x: 115, y: 44)
                
                imageSolucion.image = #imageLiteral(resourceName: "ln_CA_R1")
                imageIS1.image = #imageLiteral(resourceName: "ln_CA_R2")
                
                imageIS2.image = #imageLiteral(resourceName: "ln_CA_R3")
                lbN2.text = lbDividendo.text
                lbN2.frame.origin = CGPoint(x: 30, y: 137)
                lbNum2.text = lbDivisor.text
                lbNum2.frame.origin = CGPoint(x: 103, y: 135)
                lbPow2.text = lbDivisor.text
                lbPow2.frame.origin = CGPoint(x: 75, y: -8)
                
                imageIS3.image = #imageLiteral(resourceName: "ln_CA_R4")
                lbN3.text = lbDividendo.text
                lbN3.frame.origin = CGPoint(x: 35, y: 47)
                lbNum3.text = lbDividendo.text
                lbNum3.frame.origin = CGPoint(x: 35, y: 181)
                lbDiv3.text = lbDivisor.text
                lbDiv3.frame.origin = CGPoint(x: 111, y: 181)
                lbPow3.text = lbDivisor.text
                lbPow3.font = UIFont(name: lbPow3.font.fontName, size: 27)
                lbPow3.frame.origin = CGPoint(x: 111, y: 53)
                
                
            } else if iDivd == 1 && iDivr == 1 { // MOSTRARA LA DE LNE
                imageIntegral.image = #imageLiteral(resourceName: "lnE")
                lbPow.frame.origin = CGPoint(x: 132, y: 24)
                
                imageSolucion.image = #imageLiteral(resourceName: "ln_N_R1")
                imageIS1.image = #imageLiteral(resourceName: "ln_N_R2")
                
                imageIS2.image = #imageLiteral(resourceName: "ln_N_R3")
                lbN2.text = lbPow.text
                lbN2.frame.origin = CGPoint(x: 30, y: 137)
                
                imageIS3.image = #imageLiteral(resourceName: "ln_N_R4")
                lbN3.text = lbPow.text
                lbN3.frame.origin = CGPoint(x: 37, y: 47)
                lbNum3.text = lbPow.text
                lbNum3.frame.origin = CGPoint(x: 37, y: 181)
                
            } else if iDivr == 1 { // MOSTRARA LA DE LNC1E
                imageIntegral.image = #imageLiteral(resourceName: "lnC1E")
                lbPow.frame.origin = CGPoint(x: 149, y: 24)
                lbDividendo.frame.origin = CGPoint(x: 38, y: 40)
                
                imageSolucion.image = #imageLiteral(resourceName: "ln_CN_R1")
                imageIS1.image = #imageLiteral(resourceName: "ln_CN_R2")
                
                imageIS2.image = #imageLiteral(resourceName: "ln_CN_R3")
                lbN2.text = String(iValor)
                lbN2.frame.origin = CGPoint(x: 30, y: 137)
                
                imageIS3.image = #imageLiteral(resourceName: "ln_CN_R4")
                lbN3.text = String(iValor)
                lbN3.frame.origin = CGPoint(x: 40, y: 47)
                
                lbNum3.text = String(iValor)
                lbNum3.frame.origin = CGPoint(x: 40, y: 181)
                
            } else if iDivd == 1 { // MOSTRARA LA DE LNC2E
                imageIntegral.image = #imageLiteral(resourceName: "lnC2E")
                lbDivisor.frame.origin = CGPoint(x: 88, y: 44)
                lbPow.frame.origin = CGPoint(x: 145, y: 24)
                
                imageSolucion.image = #imageLiteral(resourceName: "ln_AN_R1")
                imageIS1.image = #imageLiteral(resourceName: "ln_AN_R2")
                
                imageIS2.image = #imageLiteral(resourceName: "ln_AN_R3")
                lbPow2.text = lbDivisor.text
                lbPow2.frame.origin = CGPoint(x: 75, y: -8)
                lbNum2.text = lbDivisor.text
                lbNum2.frame.origin = CGPoint(x: 30, y: 137)
                lbN2.text = lbPow.text
                lbN2.frame.origin = CGPoint(x: 103, y: 137)
                
                imageIS3.image = #imageLiteral(resourceName: "ln_AN_R4")
                lbN3.text = lbPow.text
                lbN3.frame.origin = CGPoint(x: 35, y: 47)
                lbNum3.text = lbPow.text
                lbNum3.frame.origin = CGPoint(x: 35, y: 181)
                lbDiv3.text = lbDivisor.text
                lbDiv3.frame.origin = CGPoint(x: 108, y: 181)
                lbPow3.text = lbDivisor.text
                lbPow3.font = UIFont(name: lbPow3.font.fontName, size: 27)
                lbPow3.frame.origin = CGPoint(x: 108, y: 47)
                
            } else { // MOSTRARA LA DE LNC1C2E
                imageIntegral.image = #imageLiteral(resourceName: "lnC1C2E")
                lbPow.frame.origin = CGPoint(x: 161, y: 24)
                lbDividendo.frame.origin = CGPoint(x: 27, y: 40)
                lbDivisor.frame.origin = CGPoint(x: 103, y: 44)
                
                imageSolucion.image = #imageLiteral(resourceName: "ln_CAN_R1")
                imageIS1.image = #imageLiteral(resourceName: "ln_CAN_R2")
                
                imageIS2.image = #imageLiteral(resourceName: "ln_CAN_R3")
                lbPow2.text = lbDivisor.text
                lbPow2.frame.origin = CGPoint(x: 75, y: -8)
                
                lbNum2.text = lbDivisor.text
                lbNum2.frame.origin = CGPoint(x: 103, y: 135)
                
                lbN2.text = String(iValor)
                lbN2.frame.origin = CGPoint(x: 30, y: 137)
                
                imageIS3.image = #imageLiteral(resourceName: "ln_CAN_R4")
                lbN3.text = String(iValor)
                lbN3.frame.origin = CGPoint(x: 35, y: 47)
                lbNum3.text = String(iValor)
                lbNum3.frame.origin = CGPoint(x: 35, y: 181)
                lbDiv3.text = lbDivisor.text
                lbDiv3.frame.origin = CGPoint(x: 108, y: 181)
                lbPow3.text = lbDivisor.text
                lbPow3.font = UIFont(name: lbPow3.font.fontName, size: 27)
                lbPow3.frame.origin = CGPoint(x: 108, y: 47)
            }
            
            dic = ["tipo" : randomNumber2, "divisor" : iDivr, "dividendo" : iDivd, "potencia" : iPow]

            break
    
        case 3:
            iPaginas = 2
            iOtroNumRandom = Int(arc4random() % 6)
            var dentrMult = Int(arc4random() % 30) + 1
            
            if dentrMult > 15
            {
                dentrMult = 1
                imageIntegral.image = #imageLiteral(resourceName: "cos")
                
            }
            else
            {
              imageIntegral.image = #imageLiteral(resourceName: "cos_c")
              lbDivisor.text = String(dentrMult)
                
            }
            
            calcularTrigonometricas(tipo: iOtroNumRandom, dentroMult: dentrMult)
            break
        
        default:
            
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
    
    func calcularSumasPotencial(variables : NSDictionary) -> Bool{
        
        
        let divisor = variables.value(forKey: "divisor") as! Int
        let potenciadivisor = variables.value(forKey: "potenciadivisor") as! Int
        let potencia1 = variables.value(forKey: "potencia1") as! Int
        let dividendo1 = variables.value(forKey: "dividendo1") as! Int
        let potencia2 = variables.value(forKey: "potencia2") as! Int
        let dividendo2 = variables.value(forKey: "dividendo2") as! Int
        let potencia3 = variables.value(forKey: "potencia3") as! Int
        let dividendo3 = variables.value(forKey: "dividendo3") as! Int
        
        var diccConseguirRespuesta : NSDictionary = ["tipo" : 2, "potencia" : potencia1 -
            potenciadivisor , "divisor" : divisor, "dividendo" : dividendo1]
        
        let diccRespuestas1 : NSDictionary = calcularPotencial(variables: diccConseguirRespuesta)
        
        imageIS1.image = #imageLiteral(resourceName: "procedimientoSumaPot")
        
        lbNum1.text = String(diccRespuestas1.value(forKey: "dividendo") as! Int)
        if lbNum1.text == "1" {
            lbNum1.text = ""
        }
        
        lbDiv1.text = String(diccRespuestas1.value(forKey: "divisor") as! Int)
        lbPow1.text = String(diccRespuestas1.value(forKey: "potencia") as! Int)
        lbN1.text = String(diccRespuestas1.value(forKey: "potencia") as! Int - 1)
        
        lbPregDsExp1.text = String(potenciadivisor)
        lbPregDnExp1.text = String(potencia1)
        lbPregDivsr1.text = String(divisor)
        lbPregDivdnd1.text = String(dividendo1)
        
        lbN1.frame.origin = CGPoint(x: 282, y: 31)
        lbNum1.frame.origin = CGPoint(x: 175, y: 117)
        lbDiv1.frame.origin = CGPoint(x: 193, y: 163)
        lbPow1.frame.origin = CGPoint(x: 226, y: 90)
        lbPregDsExp1.frame.origin = CGPoint(x: 129, y: 155)
        lbPregDnExp1.frame.origin = CGPoint(x: 129, y: 98)
        lbPregDivsr1.frame.origin = CGPoint(x: 83, y: 172)
        lbPregDivdnd1.frame.origin = CGPoint(x: 83, y: 123)
        
        //-----------------------------------------------------------------------------------------------------
        diccConseguirRespuesta = ["tipo" : 2, "potencia" : potencia2 - potenciadivisor ,
                                  "divisor" : divisor, "dividendo" : dividendo2]
        
        let diccRespuestas2 : NSDictionary = calcularPotencial(variables: diccConseguirRespuesta)
        
        imageIS2.image = #imageLiteral(resourceName: "procedimientoSumaPot")
        
        lbNum2.text = String(diccRespuestas2.value(forKey: "dividendo") as! Int)
        if lbNum2.text == "1" {
            lbNum2.text = ""
        }
        
        lbDiv2.text = String(diccRespuestas2.value(forKey: "divisor") as! Int)
        lbPow2.text = String(diccRespuestas2.value(forKey: "potencia") as! Int)
        lbN2.text = String(diccRespuestas2.value(forKey: "potencia") as! Int - 1)
        
        lbPregDsExp2.text = String(potenciadivisor)
        lbPregDnExp2.text = String(potencia2)
        lbPregDivsr2.text = String(divisor)
        lbPregDivdnd2.text = String(dividendo2)
        
        lbN2.frame.origin = CGPoint(x: 282, y: 28)
        lbNum2.frame.origin = CGPoint(x: 175, y: 114)
        lbDiv2.frame.origin = CGPoint(x: 193, y: 160)
        lbPow2.frame.origin = CGPoint(x: 226, y: 87)
        lbPregDsExp2.frame.origin = CGPoint(x: 129, y: 152)
        lbPregDnExp2.frame.origin = CGPoint(x: 129, y: 95)
        lbPregDivsr2.frame.origin = CGPoint(x: 83, y: 169)
        lbPregDivdnd2.frame.origin = CGPoint(x: 83, y: 120)
        
        //-----------------------------------------------------------------------------------------------------
        diccConseguirRespuesta = ["tipo" : 2, "potencia" : potencia3 - potenciadivisor ,
                                  "divisor" : divisor, "dividendo" : dividendo3]
        
        let diccRespuestas3 : NSDictionary = calcularPotencial(variables: diccConseguirRespuesta)
        
        imageIS3.image = #imageLiteral(resourceName: "procedimientoSumaPot")
        
        lbNum3.text = String(diccRespuestas3.value(forKey: "dividendo") as! Int)
        if lbNum3.text == "1" {
            lbNum3.text = ""
        }
        
        lbDiv3.text = String(diccRespuestas3.value(forKey: "divisor") as! Int)
        lbPow3.text = String(diccRespuestas3.value(forKey: "potencia") as! Int)
        lbN3.text = String(diccRespuestas3.value(forKey: "potencia") as! Int - 1)
        lbPregDsExp3.text = String(potenciadivisor)
        lbPregDnExp3.text = String(potencia3)
        lbPregDivsr3.text = String(divisor)
        lbPregDivdnd3.text = String(dividendo3)
        
        lbN3.frame.origin = CGPoint(x: 283, y: 36)
        lbNum3.frame.origin = CGPoint(x: 176, y: 122)
        lbDiv3.frame.origin = CGPoint(x: 194, y: 168)
        lbPow3.frame.origin = CGPoint(x: 227, y: 95)
        lbPregDsExp3.frame.origin = CGPoint(x: 130, y: 160)
        lbPregDnExp3.frame.origin = CGPoint(x: 130, y: 103)
        lbPregDivsr3.frame.origin = CGPoint(x: 84, y: 177)
        lbPregDivdnd3.frame.origin = CGPoint(x: 84, y: 128)
        
        //-------------------------------------------------------------------------------------------------------
        
        imageIS4.image = #imageLiteral(resourceName: "Solucion Final Suma")
        
        lbNum1Fin.text = lbNum1.text
        lbNum2Fin.text = lbNum2.text
        lbNum3Fin.text = lbNum3.text
        
        lbDiv1Fin.text = lbDiv1.text
        lbDiv2Fin.text = lbDiv2.text
        lbDiv3Fin.text = lbDiv3.text
        
        lbPow1Fin.text = lbPow1.text
        lbPow2Fin.text = lbPow2.text
        lbPow3Fin.text = lbPow3.text
        
        return true
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "configuracion" {
            let lugar = segue.destination as! ConfiguracionesViewController
            lugar.arrEnabledTypes = arrEnabledTypes
            lugar.LoEnvio = true
        } else {
            let lugar = segue.destination as! ResolverViewController
            lugar.arrEnabledTypes = arrEnabledTypes
        }
    }
    
    func calcularTrigonometricas (tipo : Int, dentroMult : Int)
    {
        var ttipo = Int(arc4random() % 2)
        
        switch ttipo {
        case 0:
            //sen cu = -(cos u)/ c
            if dentroMult == 1 {
                imageSolucion.image = #imageLiteral(resourceName: "senX_R1")
                imageIS1.image = #imageLiteral(resourceName: "senX_R2")
                lbN1.text = "1"
                lbN1.frame.origin = CGPoint(x: 266, y: 108)
            }
            else
            {
                imageSolucion.image = #imageLiteral(resourceName: "senC_R1")
                imageIS1.image = #imageLiteral(resourceName: "sencc2_r2")
                lbN.frame.origin = CGPoint(x: 171, y: 158)
                lbN.text = String(dentroMult)
                lbN1.text = String(dentroMult)
                lbN1.frame.origin = CGPoint(x: 255, y: 90)
                lbNum1.text  = String(dentroMult)
                lbDiv1.text  = String(dentroMult)
                lbNum1.frame.origin = CGPoint(x: 139, y: 137)
                lbDiv1.frame.origin = CGPoint(x: 113, y: 172)
            }
            
            break
        case 1:
            //cos u = sen u
            if dentroMult == 1 {
                imageSolucion.image = #imageLiteral(resourceName: "cosX_R1")
                imageIS1.image = #imageLiteral(resourceName: "cosX_R2")
                lbN1.text = "1"
                lbN1.frame.origin = CGPoint(x: 266, y: 108)
            }
            else
            {
                imageSolucion.image = #imageLiteral(resourceName: "cosC_R1")
                imageIS1.image = #imageLiteral(resourceName: "coscc_r2")
                lbN.frame.origin = CGPoint(x: 171, y: 158)
                lbN.text = String(dentroMult)
                lbN1.text = String(dentroMult)
                lbN1.frame.origin = CGPoint(x: 255, y: 90)
                lbNum1.text  = String(dentroMult)
                lbDiv1.text  = String(dentroMult)
                lbNum1.frame.origin = CGPoint(x: 139, y: 137)
                lbDiv1.frame.origin = CGPoint(x: 106, y: 178)
            }
            
            break
        case 2:
            //tan cu = - (ln (cos cu)) / c
            
            break
        case 3:
            //sen^2 cu = 1/c (cu/2 - sen (2cu) / 4)
            
            break
        case 4:
            //cos^2 u = u/2 + sen 2u / 4
            
            break
        default:
            //tan^2 cu = 1/c (tan cu - cu)
            
            break
        }
    }
    
    
    @IBAction func bSiguiente(_ sender: UIButton) {
        switch (iPosView) {
            
        case 0:
            if iPaginas > iPosView + 1 {
                viewIS1.isHidden = false
                iPosView += 1
                btnAtras.isHidden = false
                if iPosView + 1 == iPaginas
                {
                    sender.isHidden = true
                }
            }
            break
        case 1:
            if iPaginas > iPosView + 1 {
                viewIS2.isHidden = false
                iPosView += 1
                if iPosView + 1 == iPaginas
                {
                    sender.isHidden = true
                }
            }
            break
            
        case 2:
            if iPaginas > iPosView + 1 {
                viewIS3.isHidden = false
                iPosView += 1
                if iPosView + 1 == iPaginas
                {
                    sender.isHidden = true
                }
            }
            break
            
        case 3:
            if iPaginas > iPosView + 1 {
                viewIS4.isHidden = false
                iPosView += 1
                if iPosView + 1 == iPaginas
                {
                    sender.isHidden = true
                }
            }
            break
            
        default:
            sender.isHidden = true
            
            break
        }
    }

    
    @IBAction func bAtras(_ sender: UIButton) {
        switch (iPosView) {
            
        case 0:
            
            break
        case 1:
            sender.isHidden = true
            viewIS1.isHidden = true
            iPosView -= 1
            if btnAdelante.isHidden
            {
                btnAdelante.isHidden = false
            }
            break
            
        case 2:
            viewIS2.isHidden = true
            iPosView -= 1
            if btnAdelante.isHidden
            {
                btnAdelante.isHidden = false
            }
            break
            
        case 3:
            viewIS3.isHidden = true
            iPosView -= 1
            if btnAdelante.isHidden
            {
                btnAdelante.isHidden = false
            }
            break
            
        case 4:
            viewIS4.isHidden = true
            iPosView -= 1
            if btnAdelante.isHidden
            {
                btnAdelante.isHidden = false
            }
            break
            
        default:
            
            break
        }
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
    
    
    @IBAction func `switch`(_ sender: UISegmentedControl) {
        sender.selectedSegmentIndex = 0
    }
    
    
    @IBAction func unwindConfig(unwindSegue: UIStoryboardSegue) {
        
    }
    @IBAction func unwindResolver(unwindSegue: UIStoryboardSegue) {
        
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        
        return UIInterfaceOrientationMask.portrait
        
    }
    
    override var shouldAutorotate: Bool {
        
        return false
        
    }
}
