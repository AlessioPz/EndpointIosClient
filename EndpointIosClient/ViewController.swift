//
//  ViewController.swift
//  EndpointIosClient
//
//  Created by Alessio Papazzoni on 12/11/15.
//  Copyright © 2015 Alessio Papazzoni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var lbl_answer: UILabel!
    @IBOutlet weak var txt_question: UITextField!
    @IBAction func connect(sender: AnyObject) {
        var service : GTLServiceSuggestionBeanApi? = nil
        if service == nil {
            service = GTLServiceSuggestionBeanApi()
            service?.retryEnabled = true
        }
        
        let query : GTLQuerySuggestionBeanApi = GTLQuerySuggestionBeanApi.queryForGetAnswerWithQuestion(txt_question.text)
        
        var ticket = GTLServiceTicket()
        ticket = service!.executeQuery(query, completionHandler: { (ticket: GTLServiceTicket!, object: AnyObject!, error: NSError!) -> Void in
            
            print("Analytics: \(object) or \(error)")
            if object != nil {
                let resp : GTLSuggestionBeanApiSuggestionBean = object as! GTLSuggestionBeanApiSuggestionBean
                print("User resp.answer: \(resp.answer)")
                self.lbl_answer.text = resp.answer
            } else {
                print("User Service error: \(error)")
                print("User Service not available, please check connection or retry later.")
            }
            
        })
    }
}

