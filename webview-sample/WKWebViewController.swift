//
//  WKWebViewController.swift
//  webview-sample
//
//  Created by 數田 裕介 on 2017/04/28.
//  Copyright © 2017年 數田 裕介. All rights reserved.
//

import UIKit
import WebKit

class WKWebViewController: UIViewController {

    var webView: WKWebView?
    
    
    @IBOutlet weak var wrapperView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        UserDefaults.resetStandardUserDefaults()
        let userDefaults = UserDefaults.standard

        let wkWebView = WKWebView()
        view.addSubview(wkWebView)
        webView = wkWebView
        wkWebView.translatesAutoresizingMaskIntoConstraints = false
        
        wkWebView.topAnchor.constraint(equalTo: wrapperView.topAnchor, constant: 0).isActive = true
        wkWebView.bottomAnchor.constraint(equalTo: wrapperView.bottomAnchor, constant: 0).isActive = true
        wkWebView.leadingAnchor.constraint(equalTo: wrapperView.leadingAnchor, constant: 0).isActive = true
        wkWebView.trailingAnchor.constraint(equalTo: wrapperView.trailingAnchor, constant: 0).isActive = true
        
        wrapperView.layoutIfNeeded()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        URLCache.shared.removeAllCachedResponses()
        
        webView?.loadHTMLString("", baseURL: nil)
        
        if let url = URL(string: urlString) {
            var req = URLRequest(url: url)
            req.cachePolicy = .reloadIgnoringLocalCacheData
            
            webView?.load(req)
        }
    }



}
