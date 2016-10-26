//
//  LoadURL.swift
//  MyBook
//
//  Created by PIRATE on 10/25/16.
//  Copyright © 2016 PIRATE. All rights reserved.
//

import UIKit

class LoadURL: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var urlString: UITextField!
    
    @IBOutlet weak var myActivity: UIActivityIndicatorView!
    let baseUrl = "http://www."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myActivity.isHidden = true
        // Do any additional setup after loading the view.
    }
}


extension LoadURL : UITextFieldDelegate, UIWebViewDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        myActivity.isHidden = false
        let url = URL(string: baseUrl + textField.text!)!
        let urlRequest = URLRequest(url: url)
        self.webView.loadRequest(urlRequest)
        myActivity.startAnimating()
        return true
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView)
    {
        myActivity.isHidden = true
        myActivity.stopAnimating()
    }
}
