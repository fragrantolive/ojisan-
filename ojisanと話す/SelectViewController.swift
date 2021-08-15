//
//  SelectViewController.swift
//  ojisanと話す
//
//  Created by 中島詩草 on 2021/08/15.
//

import UIKit

class SelectViewController: UIViewController {
    var convarsationID:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func byPerformSegue(sender: UIButton) {
        convarsationID = sender.tag
        self.performSegue(withIdentifier: "toSegueVIewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSegueVIewController" {
            let nextVC = segue.destination as! ResultViewController
            nextVC.conversation = convarsationID
        }
        
    }
    
    
}

/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */


