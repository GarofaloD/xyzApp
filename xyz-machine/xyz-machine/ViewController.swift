//
//  ViewController.swift
//  xyz-machine
//
//  Created by Daniel Garofalo on 9/22/18.
//  Copyright © 2018 Daniel Garofalo. All rights reserved.
//

import UIKit
import CoreMotion  //This will give us access to the motion instruments

class ViewController: UIViewController {

    //Properties
    @IBOutlet weak var xLabel: UILabel!
    @IBOutlet weak var yLabel: UILabel!
    @IBOutlet weak var zLabel: UILabel!
    
    var motionManager : CMMotionManager! //Force unwrapping to prebent errors
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        motionManager = CMMotionManager() //Instanciate for tehhjis class when it opens
        
        //AccelerometerUpdates uses two main values on the HANDLER that need to be passed (check on those by clicking on the valye and Enter): CMaccelerometerData and Error. The idea would be to create a function that will handle those two values in such way that you do not need to manage evrything on the Accelerometer update method. Therefore, we will be creating the updateLabelds function and that will be passed on this side as the handler
        motionManager.startAccelerometerUpdates(to: .main, withHandler: updateLabels)
    }
    
    //Main handler for the Accelerometerdata
    func updateLabels(data: CMAccelerometerData?, error: Error?) {
        //Aslong as there is data coming from the CMAccelerometerdata, create a variable called accelerometer adat. Otherwise EXIT
        guard let accelerometerData = data else {return}
        print(accelerometerData)
    }


}

