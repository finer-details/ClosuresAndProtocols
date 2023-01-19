
import SwiftUI

class ProductSearch: ObservableObject, ShopDepartments {
    
    let shop = ProductQueryEngine()
    
    @Published var productEntry = ""
    @Published var result = ""
    
    func userSearch() {
        shop.searchItem {
           result = departmentType(product: productEntry)
        }
    }
}
