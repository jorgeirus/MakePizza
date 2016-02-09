//
//  vistaResultados.swift
//  MakePizza
//
//  Created by Jorge Andres Moreno Castiblanco on 8/02/16.
//  Copyright © 2016 eworld. All rights reserved.
//

import UIKit

class vistaResultados: UIViewController {
    
    
    @IBOutlet weak var tamanio: UILabel!
    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var queso: UILabel!
    @IBOutlet weak var ingredientes: UILabel!
    
    var resultadoTamanio = ""
    var resultadoMasa = ""
    var resultadoQueso = ""
    var resultadoIngredientes = [String]()
    
    override func viewWillAppear(animated: Bool) {
        tamanio.text = resultadoTamanio
        masa.text = resultadoMasa
        queso.text = resultadoQueso
        ingredientes.text = mostrarIngredientes()
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mostrarAlerta(){
        if resultadoTamanio == "" || resultadoMasa == "" || resultadoQueso == ""
        {
          let alerta = UIAlertController(title: "MAKEPIZZA", message: "Existen Campos vacios!", preferredStyle: UIAlertControllerStyle.Alert)
            
            let accion = UIAlertAction(title: "CORREGIR", style: UIAlertActionStyle.Cancel) { _ in
                alerta.dismissViewControllerAnimated(true, completion: nil) }
            alerta.addAction(accion)
            
            self.presentViewController(alerta, animated: true, completion: nil)
        }
        
        let alerta2 = UIAlertController(title: "MAKEPIZZA", message: "Su pizza se envio a la cocina", preferredStyle: UIAlertControllerStyle.Alert)
        
        let accion2 = UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel) { _ in
            alerta2.dismissViewControllerAnimated(true, completion: nil) }
        
        alerta2.addAction(accion2)
        
        self.presentViewController(alerta2, animated: true, completion: nil)
    
    }
    
    @IBAction func confirmar(sender: AnyObject) {
        mostrarAlerta()
    }
    
    func mostrarIngredientes()->String{
        var acumIngre = ""
        var contador = 0;
        for i in resultadoIngredientes{
            if(contador<4){
                acumIngre+="\(i)\n"
            }else{
                acumIngre+="\(i)"
            }
            contador++
        }
        
        return acumIngre
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
