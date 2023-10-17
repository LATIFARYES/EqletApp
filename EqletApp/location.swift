////
////  location.swift
////  EqletApp
////
////  Created by Raghad on 17/10/2023.
////
//
//import SwiftUI
//import CoreLocation
//
//class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
//    private var locationManager = CLLocationManager()
//    @Published var userLocation: CLLocation?
//
//    override init() {
//        super.init()
//        locationManager.delegate = self
//        locationManager.requestWhenInUseAuthorization()
//        locationManager.startUpdatingLocation()
//    }
//
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        if let location = locations.last {
//            userLocation = location
//        }
//    }
//}
//
//let targetLocation = CLLocation(latitude: 24.86154, longitude: 46.72554)
//let distanceInMeters = userLocation?.distance(from: targetLocation) ?? 0
//
//if distanceInMeters <= 1000 {
//    let content = UNMutableNotificationContent()
//    content.title = "You're near to Al-Masmak!"
//    content.body = "You've come within 1 km of Al-Masmak"
//
//    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
//    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
//
//    UNUserNotificationCenter.current().add(request)
//}
//
//
//
//
//
