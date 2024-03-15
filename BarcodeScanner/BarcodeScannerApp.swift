//
//  BarcodeScannerApp.swift
//  BarcodeScanner
//
//  Created by User on 14/03/2024.
//

import SwiftUI

@main
struct BarcodeScannerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            BarcodeScannerView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
