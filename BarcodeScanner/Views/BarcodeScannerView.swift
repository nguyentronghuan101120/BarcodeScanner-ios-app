//
//  BarcodeScannerView.swift
//  BarcodeScanner
//
//  Created by User on 14/03/2024.
//

import SwiftUI


struct BarcodeScannerView: View {
    
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
    
        NavigationView{
            VStack{
                Text("Barcode Scanner").font(.title).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                ScannerView(scannedCode: $viewModel.barcode,alertItem: $viewModel.alert).frame(width: .infinity,height: 300)
                Spacer().frame(height: 60)
                Label("Scanned barcode", systemImage:"barcode.viewfinder" ).font(.title3).fontWeight(.bold)
                
                
                
                Text(viewModel.statusText).foregroundColor(viewModel.statusColor).fontWeight(.semibold).font(.system(size: 24))
                
            
                
                Spacer()
            }.padding()
        }.alert(item:$viewModel.alert){
            alertItem in
            Alert(title: Text(alertItem.title),message: Text(alertItem.message),dismissButton: alertItem.dismissButton)
            
        }

    }
}

#Preview {
    BarcodeScannerView()
}
