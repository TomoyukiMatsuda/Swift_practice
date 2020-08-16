//
//  ViewController.swift
//  MapAndProtcol
//
//  Created by 松田智之 on 2020/08/16.
//  Copyright © 2020 tmatsuda. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate, UIGestureRecognizerDelegate, SearchLocationDelegate {

    var addressString = ""
    @IBOutlet var longPress: UILongPressGestureRecognizer!
    @IBOutlet weak var settingButton: UIButton!
    @IBOutlet weak var mapView: MKMapView!
    var locManager: CLLocationManager!
    @IBOutlet weak var addressLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingButton.backgroundColor = .white
        settingButton.layer.cornerRadius = 20.0
        
    }


    @IBAction func longPressTap(_ sender: UILongPressGestureRecognizer) {
        
        if sender.state == .began {
            //タップを開始した
            
        } else if sender.state == .ended {
            //タップを終了した
            
            //
            let tapPoint = sender.location(in: view)
            
            let center = mapView.convert(tapPoint, toCoordinateFrom: mapView)
            let lat = center.latitude
            let log = center.longitude
            
            convert(lat: lat, log: log)
            
            
        }
        
    }
    
    //緯度、経度を取得するメソッド？を定義
    func convert(lat: CLLocationDegrees, log: CLLocationDegrees) {
        
        let geocoder = CLGeocoder()
        let location = CLLocation(latitude: lat, longitude: log)
        
        //クロージャー すぐに呼ばれる処理ではない
        geocoder.reverseGeocodeLocation(location) { (placeMark, error) in
            
            if let placeMark = placeMark {
                
                if let pm = placeMark.first {
                    
                    if pm.administrativeArea != nil || pm.locality != nil {
                        
                        self.addressString = pm.name! + pm.administrativeArea! + pm.locality!
                        
                    } else {
                        self.addressString = pm.name!
                    }
                    
                    self.addressLabel.text = self.addressString
                }
            }
            
        }
    }
    
    @IBAction func goToSearchVC(_ sender: Any) {
        
        //画面遷移
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "next" {
            
            let nextVC = segue.destination as! NextViewController
            
            nextVC.delegate = self
            
        }
    }
    
    func searchLocation(idoValue: String, keidoValue: String) {
        
        if idoValue.isEmpty != true && keidoValue.isEmpty != true {
            
            let idoString = idoValue
            let keidoString = keidoValue
            
            //緯度、経度からコーディネート
            let coordinate = CLLocationCoordinate2DMake(Double(idoString)!, Double(keidoString)!)
            
            //表示する範囲を指定
            let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
            
            //領域を指定
            let region = MKCoordinateRegion(center: coordinate, span: span)
            
            //領域をmapViewに設定
            mapView.setRegion(region, animated: true)
            
            //緯度経度から住所へ変換
            convert(lat: Double(idoString)!, log: Double(keidoString)!)
            
            //ラベルに表示
            addressLabel.text = addressString
            
        }
    }
    
    
}

