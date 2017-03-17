//
//  ViewController.swift
//  TestingSagement
//
//  Created by Cyberk on 3/15/17.
//  Copyright © 2017 Cyberk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var sagementControl: UISegmentedControl!

    @IBOutlet weak var showlabel: UILabel!
    override func viewDidAppear(_ animated: Bool) {
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sagementControl.removeAllSegments()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func firstAction(_ sender: Any) {
        self.sagementControl.removeAllSegments()
        self.sagementControl.insertSegment(withTitle: "Second", at: 0, animated: true)
        
    }
    @IBAction func secondAction(_ sender: Any) {
        self.sagementControl.removeAllSegments()
        self.sagementControl.insertSegment(withTitle: "First", at: 0, animated: true)
        self.sagementControl.insertSegment(withTitle: "Third", at: 1, animated: true)
        
    }
    @IBAction func thirdAction(_ sender: Any) {
        self.sagementControl.removeAllSegments()
        self.sagementControl.insertSegment(withTitle: "First", at: 0, animated: true)
        self.sagementControl.insertSegment(withTitle: "Third", at: 1, animated: true)
        self.sagementControl.insertSegment(withTitle: "Second", at: 2, animated: true)
        
    }
    
    @IBAction func sagementChange(_ sender: Any) {
        let title = sagementControl.titleForSegment(at: sagementControl.selectedSegmentIndex)!
        if title == "First"{
            showlabel.text = "First"
        }else if title == "Second"{
            showlabel.text = "Second"
        }else if title == "Third"{
            showlabel.text = "Third"
        }
        
        
//        if sagementControl.selectedSegmentIndex == 0{
//            showlabel.text = "1"
//        }else if sagementControl.selectedSegmentIndex == 1{
//            showlabel.text = "2"
//        }else{
//            showlabel.text = "3"
//        }
        
    }



}

