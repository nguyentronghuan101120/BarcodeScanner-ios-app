//
//  Alert.swift
//  BarcodeScanner
//
//  Created by User on 15/03/2024.
//

import Foundation
import SwiftUI

struct AlertItem: Identifiable{
    var id =  UUID()
    
    
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext{
    static let invalidDeviceInput = AlertItem(title: "Invalid device input", message: "Something wrong with you camera", dismissButton: .default(Text("Ok")))
    
    static let invalidScannedType = AlertItem(title: "Invalid scanned type", message: "The value scanned is not valid", dismissButton: .default(Text("Ok")))
}
