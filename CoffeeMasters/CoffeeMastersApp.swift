//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by Blake Videbeck on 23/10/22.
//

import SwiftUI

@main
struct CoffeeMastersApp: App {
	
	@StateObject var menuManager = MenuManager()
	@StateObject var cartManager = CartManager()

	
    var body: some Scene {
        WindowGroup {
            ContentView()
				.environmentObject(menuManager)
				.environmentObject(cartManager)

        }
    }
}
