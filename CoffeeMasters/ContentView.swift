	//
	//  ContentView.swift
	//  CoffeeMasters
	//
	//  Created by Blake Videbeck on 23/10/22.
	//

import SwiftUI

struct ContentView: View {
	@State var name = "unnamed"
	
	var body: some View {
		Offer(title: "My offer", description: "This is a description")
	}
}

//struct Greeting: View {
//	@State var name = "unnamed"
//
//	var body: some View {
//		VStack {
//			TextField("Enter your name", text: $name)
//			Text("Hello \(name)")
//		}
//
//	}
//}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
