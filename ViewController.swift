//
//  ViewController.swift
//  gifInsideScreen
//
//  Created by User on 2017-03-19.
//  Copyright © 2017 SBSoftwares. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webViewBG: UIWebView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let filter = UIView()
        
        filter.frame = self.view.frame
        
        filter.backgroundColor = UIColor.black
        
        filter.alpha = 0.05
        
        self.view.addSubview(filter)
        
        let htmlPath = Bundle.main.path(forResource: "WebViewContent", ofType: "html")
        let htmlURL = URL(fileURLWithPath: htmlPath!)
        let html = try? Data(contentsOf: htmlURL)
        
        self.webViewBG.load(html!, mimeType: "text/html", textEncodingName: "UTF-8", baseURL: htmlURL.deletingLastPathComponent())
        
        self.loginButton.layer.borderColor = UIColor.white.cgColor
        self.loginButton.layer.borderWidth = 2
        
        self.signUpButton.layer.borderColor = UIColor.white.cgColor
        self.signUpButton.layer.borderWidth = 2
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override var preferredStatusBarStyle : UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }

}

