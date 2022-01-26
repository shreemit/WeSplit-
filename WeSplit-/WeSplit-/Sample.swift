//
//  Sample.swift
//  WeSplit
//
//  Created by Shreemit on 27/01/22.
//

import SwiftUI

struct Sample: View {
	@State var count = 0
	@State private var name: String = ""
	let emos = ["😂", "💀", "😅"]
	@State private var selectedEmo = "😂"
	var body: some View {
		NavigationView {
			ZStack {
				Form {
					Section {
						TextField("Enter name ", text: $name)
						Text("Name is \(name)")
					}
					Picker("Selected your emoji", selection: $selectedEmo) {
						ForEach(emos, id: \.self) {
							Text($0)
						}
					}.cornerRadius(12)
				}
				Button("Count \(count)") {
					count += 1
				}
			}
			.navigationTitle("WeSplit")
			.navigationBarTitleDisplayMode(.large)
		}
	}
}

struct Sample_Previews: PreviewProvider {
	static var previews: some View {
		Sample()
			.preferredColorScheme(.dark)
	}
}
