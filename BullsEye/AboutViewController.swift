//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Tolga Pirturk on 19.12.2020.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }

}
