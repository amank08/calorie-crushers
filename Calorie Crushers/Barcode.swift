//
//  Barcode.swift
//  Calorie Crushers
//
//  Created by Aman Kumar on 10/17/24.
//

import SwiftUI

struct BarcodeScanView: View {
    @State private var isScanning = false

    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: "barcode.viewfinder")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            
            Spacer()

            Text("Scanning...").font(.headline)
            
            Button(action: {
                self.isScanning.toggle()
                // Add barcode scanning logic here
            }) {
                Text("Start Scanning")
                    .bold()
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct BarcodeScanView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScanView()
    }
}
