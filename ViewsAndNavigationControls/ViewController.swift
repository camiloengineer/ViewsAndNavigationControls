//
//  ViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Camilo Gonzalez on 17-04-22.
//

import UIKit
import WebKit
import MapKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myFakeView: UIView!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "My View Controller"
        
        myWebView.load(URLRequest(url: URL(string: "https://google.com")!))
        
        myMap.centerCoordinate = CLLocationCoordinate2D(latitude: -33.5053656, longitude: -70.7989911)
    }

    @IBAction func myButtonAction(_ sender: Any) {
        myFakeView.isHidden = true
    }
    
}

