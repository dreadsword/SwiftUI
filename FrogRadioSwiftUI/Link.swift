//
//  Link.swift
//  FrogRadioSwiftUI
//
//  Created by Robert Dodson on 6/18/19.
//  Copyright © 2019 Robert Dodson. All rights reserved.
//

import SwiftUI
import UIKit
import WebKit


struct WebView : UIViewRepresentable {
    
    let request: URLRequest
    
    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}

struct showlink: View {
    
    var urlstr:String
    
    var body: some View {
        WebView(request: URLRequest(url: URL(string: urlstr)!))
    }
}

struct link: View {
    
    var title:String
    var url:String
    
    var body: some View {
        NavigationButton(destination: showlink(urlstr:url) ) {
            Text(title).color(.blue).underline()
        }
    }
}
