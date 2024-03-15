//
//  BarcodeScannerView.swift
//  BarcodeScanner
//
//  Created by User on 14/03/2024.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @State private var barcode = ""
    var body: some View {
    
            VStack{
                Text("Barcode Scanner").font(.title).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                ScannerView(scannedCode: $barcode).frame(width: .infinity,height: 300)
                Spacer().frame(height: 60)
                Label("Scanned barcode", systemImage:"barcode.viewfinder" ).font(.title3).fontWeight(.bold)
                
                
                
                Text(barcode.isEmpty ? "Not scanned yet" : barcode).foregroundColor(barcode.isEmpty ? .red:.green).fontWeight(.semibold).font(.system(size: 24))
                
                Spacer()
            }.padding()

    }
}

#Preview {
    BarcodeScannerView()
}
