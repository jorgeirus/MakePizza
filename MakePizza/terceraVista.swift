//
//  terceraVista.swift
//  MakePizza
//
//  Created by Jorge Andres Moreno Castiblanco on 5/02/16.
//  Copyright © 2016 eworld. All rights reserved.
//

import UIKit

class terceraVista: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    var tipoQueso = []
    var tamanio = ""
    var masa = ""
    var seleccionado = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipoQueso = ["", "mozarela","cheddar","parmesano","sin queso"]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(tipoQueso[row])"
    }
    
    
    // Declara una función de tipo pickerView que retorna la cantidad total del arreglo masa
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tipoQueso.count
    }
    
    internal func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        seleccionado = tipoQueso[row] as! String
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! Ingredientes
        sigVista.resultadoQueso = seleccionado
        sigVista.resultadoTamanio = tamanio
        sigVista.resultadoMasa = masa
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
