//
//  ScannerView.swift
//  BarcodeScanner
//
//  Created by User on 14/03/2024.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
   
    
    @Binding var scannedCode: String 
    
    
    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(scannerView: self)
    }
    
    final class Coordinator: NSObject, ScannerVCDelegate{
        
        private let scannerView: ScannerView
        
        init(scannerView: ScannerView) {
            self.scannerView = scannerView
        }
        
        func didFind(barcode: String) {
            scannerView.scannedCode = barcode
        }
        
        func didError(error: CameraError) {
            print(error.rawValue)
        }
        
        
    }
}
//
//#Preview {
//    ScannerView()
//}
