
import Foundation

/// The Protocol

protocol ShopDepartments {
    
}

extension ShopDepartments {
    
    func departmentType(product: String) -> String {
        if product == "Laptop" {
            return "You need to look in the Electricals department"
        } else {
            return "You need to look in the Clothing department"
        }
    }
}
