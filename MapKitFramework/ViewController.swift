//
//  ViewController.swift
//  MapKitFramework
//
//  Created by Ömer Faruk Kılıçaslan on 7.05.2022.
//

import UIKit
import MapKit
class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //41, 28
        
        let konum = CLLocationCoordinate2D(latitude: 41, longitude: 28)
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        
        let bolge = MKCoordinateRegion(center: konum, span: span)
        
        mapView.setRegion(bolge, animated: true)
        
        let pin = MKPointAnnotation()
        pin.coordinate = konum
        pin.title = "Taksim"
        pin.subtitle = "Alt Başlık"
        
        mapView.addAnnotation(pin)
    }


}

