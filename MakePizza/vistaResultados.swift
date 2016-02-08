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
    
    var resultadoTamanio = ""
    var resultadoMasa = ""
    var resultadoQueso = ""
    
    override func viewWillAppear(animated: Bool) {
        tamanio.text = resultadoTamanio
        masa.text = resultadoMasa
        queso.text = resultadoQueso
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
