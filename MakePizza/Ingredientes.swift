//
//  Ingredientes.swift
//  MakePizza
//
//  Created by Jorge Andres Moreno Castiblanco on 8/02/16.
//  Copyright © 2016 eworld. All rights reserved.
//

import UIKit

class Ingredientes: UIViewController {

    @IBOutlet weak var switchJamon: UISwitch!
    @IBOutlet weak var labelJamon: UILabel!
    @IBOutlet weak var switchPepperoni: UISwitch!
    @IBOutlet weak var labelPepperoni: UILabel!
    @IBOutlet weak var switchPavo: UISwitch!
    @IBOutlet weak var labelPavo: UILabel!
    @IBOutlet weak var swicthSalchicha: UISwitch!
    @IBOutlet weak var labelSalchicha: UILabel!
    @IBOutlet weak var swicthAceituna: UISwitch!
    @IBOutlet weak var labelAceituna: UILabel!
    @IBOutlet weak var switchCebolla: UISwitch!
    @IBOutlet weak var labelCebolla: UILabel!
    @IBOutlet weak var switchPimiento: UISwitch!
    @IBOutlet weak var labelPimiento: UILabel!
    @IBOutlet weak var switchPina: UISwitch!
    @IBOutlet weak var labelPina: UILabel!
    @IBOutlet weak var boton: UIButton!
    
    @IBOutlet weak var mensaje: UILabel!
    
    var resultadoQueso = ""
    var resultadoTamanio = ""
    var resultadoMasa = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchJamon.addTarget(self, action: Selector("evaluarSwitch:"), forControlEvents: UIControlEvents.ValueChanged)
        switchPepperoni.addTarget(self, action: Selector("evaluarSwitch:"), forControlEvents: UIControlEvents.ValueChanged)
        switchPavo.addTarget(self, action: Selector("evaluarSwitch:"), forControlEvents: UIControlEvents.ValueChanged)
        swicthSalchicha.addTarget(self, action: Selector("evaluarSwitch:"), forControlEvents: UIControlEvents.ValueChanged)
        swicthAceituna.addTarget(self, action: Selector("evaluarSwitch:"), forControlEvents: UIControlEvents.ValueChanged)
        switchCebolla.addTarget(self, action: Selector("evaluarSwitch:"), forControlEvents: UIControlEvents.ValueChanged)
        switchPimiento.addTarget(self, action: Selector("evaluarSwitch:"), forControlEvents: UIControlEvents.ValueChanged)
        switchPina.addTarget(self, action: Selector("evaluarSwitch:"), forControlEvents: UIControlEvents.ValueChanged)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! vistaResultados
        sigVista.resultadoTamanio = resultadoTamanio
        sigVista.resultadoMasa = resultadoMasa
        sigVista.resultadoQueso = resultadoQueso
        sigVista.resultadoIngredientes = agregarIngredientes()
    }
    
    func agregarIngredientes()->[String]{
        var arregloIngredientes = [String]()
        
        if switchJamon.on{
            arregloIngredientes.append(labelJamon.text!)
        }
        if switchPepperoni.on{
            arregloIngredientes.append(labelPepperoni.text!)
        }
        if switchPavo.on{
            arregloIngredientes.append(labelPavo.text!)
        }
        if swicthSalchicha.on{
            arregloIngredientes.append(labelSalchicha.text!)
        }
        if swicthAceituna.on{
            arregloIngredientes.append(labelAceituna.text!)
        }
        if switchCebolla.on{
            arregloIngredientes.append(labelCebolla.text!)
        }
        if switchPimiento.on{
            arregloIngredientes.append(labelPimiento.text!)
        }
        if switchPina.on{
            arregloIngredientes.append(labelPina.text!)
        }
        
        return arregloIngredientes
    }
    
    func evaluarSwitch(switchState: UISwitch){
        if agregarIngredientes().count>=1 && agregarIngredientes().count<=5{
            boton.enabled = true
            mensaje.text = ""
        }else{
            mensaje.text = "Solo 5 Ingredientes"
            boton.enabled = false
        
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
