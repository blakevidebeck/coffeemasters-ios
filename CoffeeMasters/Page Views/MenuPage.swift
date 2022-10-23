	//
	//  MenuPage.swift
	//  CoffeeMasters
	//
	//  Created by Blake Videbeck on 24/10/22.
	//

import SwiftUI

struct MenuPage: View {
	
	@EnvironmentObject var menuManager: MenuManager
	
	var body: some View {
		NavigationView {
			List {
				AppTitle()
					.padding(.top, 4)
				ForEach(menuManager.menu) { category in
					Text(category.name)
					
					ForEach(category.products) { product in
						ZStack {
							NavigationLink(destination: DetailsPage()) {
								EmptyView()
							}.opacity(0)
							ProductItem(product: product)
								.padding(.top)
						}
						.listRowSeparator(.hidden)
					}
				}
			}.navigationTitle("Products")
		}
	}
}

struct MenuPage_Previews: PreviewProvider {
	static var previews: some View {
		MenuPage()
			.environmentObject(MenuManager())
	}
}
