//
//  BarcodeScannerVIewModel.swift
//  BarcodeScanner
//
//  Created by User on 15/03/2024.
//

import Foundation
import SwiftUI

final class BarcodeScannerViewModel: ObservableObject{
    @Published var barcode = ""
    @Published var alert : AlertItem?
    
    var statusText: String{
        barcode.isEmpty ? "Not scanned yet" : barcode
    }
    
    var statusColor: Color{
        barcode.isEmpty ? .red:.green
    }
}
