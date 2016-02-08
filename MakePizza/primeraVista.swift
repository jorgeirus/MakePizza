//
//  primeraVista.swift
//  MakePizza
//
//  Created by Jorge Andres Moreno Castiblanco on 31/01/16.
//  Copyright © 2016 eworld. All rights reserved.
//

import UIKit

class primeraVista: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    // Declara un arreglo masa de longitud 2
    
    var tamanioPizza = []
    var seleccionado = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tamanioPizza = ["","Pequeña","Mediana","Grande"]
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Declara una funcion reservada PickerView que retorna el valor de tipo String del arreglo delcarado
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(tamanioPizza[row])"
    }
    
    
    // Declara una función de tipo pickerView que retorna la cantidad total del arreglo masa
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
      return tamanioPizza.count
    }
    
    internal func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    

    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
       seleccionado = tamanioPizza[row] as! String
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! vistaResultados
        sigVista.resultadoTamanio = "jsjsjsjss"
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
