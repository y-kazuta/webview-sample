//
//  ViewController.swift
//  webview-sample
//
//  Created by 數田 裕介 on 2017/04/25.
//  Copyright © 2017年 數田 裕介. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    
    var webView: WKWebView?
    
    @IBOutlet weak var wrapperView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let wkWebView = WKWebView()
        view.addSubview(wkWebView)
        webView = wkWebView
        wkWebView.translatesAutoresizingMaskIntoConstraints = false
        
        wkWebView.topAnchor.constraint(equalTo: wrapperView.topAnchor, constant: 0).isActive = true
        wkWebView.bottomAnchor.constraint(equalTo: wrapperView.bottomAnchor, constant: 0).isActive = true
        wkWebView.leadingAnchor.constraint(equalTo: wrapperView.leadingAnchor, constant: 0).isActive = true
        wkWebView.trailingAnchor.constraint(equalTo: wrapperView.trailingAnchor, constant: 0).isActive = true
        
        let urlString = "http://www.uniqlo.com/kr/ko/"
        
        if let url = URL(string: urlString) {
            let req = URLRequest(url: url)
            
            wkWebView.load(req)
        }
        
        wrapperView.layoutIfNeeded()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

