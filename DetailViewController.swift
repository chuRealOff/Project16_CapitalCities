//
//  DetailViewController.swift
//  Project16
//
//  Created by CHURILOV DMITRIY on 11.07.2022.
//

import WebKit
import UIKit

class DetailViewController: UIViewController {
    var webView: WKWebView!
    var placeName: String!
    
    override func loadView() {
        webView = WKWebView()
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: "https://en.wikipedia.org/wiki/" + placeName) else { return }
        
        let urlRequest = URLRequest(url: url)
        
        webView.load(urlRequest)
        
    }
    
}
