//
//  ViewController.swift
//  ThePetApp
//
//  Created by rabeeh kp on 08/03/23.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    var url: URL
    
    init(url: URL) {
        self.url = url
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        url = URL(string: "") ?? URL(fileURLWithPath: "")
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let webView = WKWebView(frame: view.bounds)
        view.addSubview(webView)
        
        webView.load(URLRequest(url: url))
    }

}
