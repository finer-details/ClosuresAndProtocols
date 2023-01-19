   
import SwiftUI

@main
struct ClosuresProtocolsApp: App {
    
    @StateObject var productSearch = ProductSearch()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(productSearch)
        }
    }
}
