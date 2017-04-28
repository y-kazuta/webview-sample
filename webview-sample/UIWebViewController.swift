//
//  UIWebViewController.swift
//  webview-sample
//
//  Created by 數田 裕介 on 2017/04/28.
//  Copyright © 2017年 數田 裕介. All rights reserved.
//

import UIKit

class UIWebViewController: UIViewController {

    let urlString = "http://www.uniqlo.com/kr/ko/"


    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let url = URL(string: urlString) {
            var req = URLRequest(url: url)
            
            req.cachePolicy = .reloadIgnoringLocalCacheData
            
            webView.loadRequest(req)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
