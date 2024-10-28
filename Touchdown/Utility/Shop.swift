//
//  Shop.swift
//  Touchdown
//
//  Created by Jozek Andrzej Hajduk Sanchez on 28/10/24.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
    
    // MARK: - Computed properties
    
    var productSelected: Bool {
        return showingProduct && selectedProduct != nil
    }
    
    // MARK: - Functions
    
    func selectProduct(product: Product) {
        showingProduct = true
        selectedProduct = product
    }
    
    func unSelectProduct() {
        showingProduct = false
        selectedProduct = nil
    }
}
