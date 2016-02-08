//
//  segundaVista.swift
//  MakePizza
//
//  Created by Jorge Andres Moreno Castiblanco on 5/02/16.
//  Copyright © 2016 eworld. All rights reserved.
//

import UIKit

class segundaVista: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var pickerView: UIPickerView!
    var tipoMasa = []
    var tamanio = ""
    var seleccionado = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        tipoMasa = ["","Delgada","Crujiente","Gruesa"]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(tipoMasa[row])"
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tipoMasa.count
    }
    
    internal func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        seleccionado = tipoMasa[row] as! String
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! terceraVista
        sigVista.masa = seleccionado
        sigVista.tamanio = tamanio
        
        
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
