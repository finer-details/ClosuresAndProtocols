//
// Created 18/01/2023
// Copyright © The Very Group 2023. All rights reserved.
//
        

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var productSearch: ProductSearch
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .padding()
            TextField("Search product", text: $productSearch.productEntry)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.alphabet)
                .padding()
                .onSubmit {
                    productSearch.userSearch()
                }
            Text(productSearch.result)
                .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ProductSearch())
    }
}
