
//
//  WebviewCell.swift
//  Eureka Sheet Demo
//
//  Created by Dhiraj Jadhao on 29/12/16.
//  Copyright © 2016 Dhiraj Jadhao. All rights reserved.
//

import Foundation
import Eureka


public class WebViewCell: Cell<String>, CellType{
    
    @IBOutlet var webView: UIWebView!
    
    
    public override func setup() {
        super.setup()
        
        
        if row.value != nil {
            
            let url = NSURL (string: row.value!)
            let requestObj = URLRequest(url: url! as URL)
            webView.loadRequest(requestObj)
            
        }
        
        webView.sizeToFit()
        
    }
    
    
    public override func update() {
        super.update()
        
    }
    
}


public final class WebViewRow: Row<WebViewCell>, RowType {
    required public init(tag: String?) {
        super.init(tag: tag)
        // We set the cellProvider to load the .xib corresponding to our cell
        cellProvider = CellProvider<WebViewCell>(nibName: "WebViewCell")
    }
}
