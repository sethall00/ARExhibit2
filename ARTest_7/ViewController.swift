//
//  ViewController.swift
//  ARTest_7
//
//  Created by Seth Allen on 5/19/20.
//  Copyright © 2020 Seth Allen. All rights reserved.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    var anchor:spinbox.Scene1!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        anchor = try! spinbox.Scene1()
        anchor.generateCollisionShapes(recursive: true)
        
        arView.scene.anchors.append(anchor)
            
            
    }
    @IBAction func startExperience(_ sender: Any) {
        anchor.notifications.Behavior1.post()
    }
}
