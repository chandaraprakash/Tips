//
//  SettingsViewController.swift
//  Tips
//
//  Created by Chandaraprakash Kumar on 8/19/14.
//  Copyright (c) 2014 Chandaraprakash Kumar. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTip: UITextField!
    
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
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func goBackToMainPage(sender: AnyObject) {
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(defaultTip.text, forKey: "defaultTipPercentage")
        dismissViewControllerAnimated(true, completion: nil);

    }

    @IBAction func onSettingsTap(sender: AnyObject) {
        view.endEditing(true);
    }
}
