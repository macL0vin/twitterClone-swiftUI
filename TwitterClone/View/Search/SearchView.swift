//
//  SearchView.swift
//  TwitterClone
//
//  Created by Uahit on 20.10.2024.
//

import SwiftUI

struct SearchView: View {
	
	@State var text = ""
	@State var isEditing = false
	
    var body: some View {
		VStack {
			SearchBar(text: $text, isEditing: $isEditing)
				.padding(.horizontal)

			if !isEditing {
				List(0..<9) { item in
					SearchCell(tag: "Hello", tweets: "\(item)")
				}.listStyle(.plain)
			} else {
				List(0..<9) { item in
					SearchUserCell()
				}.listStyle(.plain)
			}
		}
    }
}

#Preview {
    SearchView()
}
