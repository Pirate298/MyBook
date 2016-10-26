//
//  DetailBook.swift
//  MyBook
//
//  Created by PIRATE on 10/24/16.
//  Copyright © 2016 PIRATE. All rights reserved.
//

import UIKit

class DetailBook: UIViewController {
    
    @IBOutlet weak var btnShowDate: UIButton!
    
    @IBOutlet weak var myActive: UIActivityIndicatorView!
    @IBOutlet weak var webView: UIWebView!
    
    @IBAction func goForward(_ sender: UIBarButtonItem) {
       webView.goForward()
    }

//    func goForward() {
//       var canGoBack: Bool
//    }
    
    @IBAction func goBack(_ sender: UIBarButtonItem) {
        webView.goBack()
        
    }
    @IBAction func reload(_ sender: UIBarButtonItem) {
        webView.reload()
    }
    
    
    @IBAction func action(_ sender: AnyObject) {
        self.webView.stringByEvaluatingJavaScript(from: "hello();")
        
    }
    var urlString : String = ""
    var type: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = urlString
        self.webView.delegate = self
        self.myActive.startAnimating()
        var urlpath = "default"
        
        switch (type) {
        case "PDF": urlpath = Bundle.main.path(forResource: urlString, ofType: "pdf")!
        case "PDF": urlpath = Bundle.main.path(forResource: urlString, ofType: "pdf")!
        self.btnShowDate.isHidden = true
        case "DOCX": urlpath = Bundle.main.path(forResource: urlString, ofType: "docx")!
        self.btnShowDate.isHidden = true
        case "HTML": urlpath = Bundle.main.path(forResource: urlString, ofType: "html")!
        self.btnShowDate.isHidden = true
        default: break
        }
        let url: URL = URL(fileURLWithPath: urlpath)
        let urlRequest = URLRequest(url: url)
        self.webView.loadRequest(urlRequest)
        
    }
    
}

extension DetailBook : UIWebViewDelegate {
    func webViewDidStartLoad(_ webView: UIWebView) {
        print("")
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        self.myActive.isHidden = true
        self.myActive.stopAnimating()
        
    }
    
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        print("")
        return true
    }
}
