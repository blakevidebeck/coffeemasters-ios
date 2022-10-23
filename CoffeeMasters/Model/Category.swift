//
//  Category.swift
//  CoffeeMasters
//
//  Created by Blake Videbeck on 24/10/22.
//

import Foundation

struct Category: Decodable, Identifiable {
	var name: String
	var products: [Product] = []
	var id: String {
		return self.name
	}
}
