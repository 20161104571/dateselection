//
//  ViewController.swift
//  dateselection
//
//  Created by 20161104571 on 2018/12/19.
//  Copyright © 2018 20161104571. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let datePicker = UIDatePicker()
        datePicker.center = CGPoint(x: 160, y:200)
        datePicker.tag = 1
        self.view.addSubview(datePicker)
        
        let rect = CGRect(x: 20, y: 360, width: 200, height: 44)
        let button = UIButton(type: UIButton.ButtonType.roundedRect)
        button.frame = rect
        button.backgroundColor = UIColor.lightGray
        button.setTitle("Get date", for: UIControl.State())
        button.addTarget(self, action: #selector(ViewController.getDate(_:)), for: UIControl.Event.touchUpInside)
        self.view.addSubview(button)
    }
    
    
  
    @IBAction func getDate(_ sender: UIButton) {
    }
    @objc func getDate() {
        let datePicker = self.view.viewWithTag(1) as! UIDatePicker
        let date = datePicker.date
        let dateFormate = DateFormatter()
        dateFormate.dateFormat = "yyyy-MM-dd HH:mm"
        let dateAndTime = dateFormate.string(from: date)
        
        let alert = UIAlertController(title: "Information", message: dateAndTime, preferredStyle: UIAlertController.Style.alert)
        let alertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(alertAction)
        self.present(alert, animated: true, completion: nil)
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
        
    


}

