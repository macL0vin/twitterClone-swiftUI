//
//  SearchBar.swift
//  TwitterClone
//
//  Created by Uahit on 27.10.2024.
//

import SwiftUI
import UIKit

struct SearchBar: View {
	
	@Binding var text: String
	@Binding var isEditing: Bool
	
    var body: some View {
		HStack {
			TextField("Search", text: $text)
				.padding(8)
				.padding(.horizontal, 44)
				.background(Color(.systemGray6))
				.cornerRadius(20)
				.overlay(
					HStack {
						Image("search")
							.renderingMode(.template)
							.foregroundColor(.secondary)
							.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
							.padding(.leading, 12)
					}
				)
			
			Button {
				isEditing = false
				text = ""
				UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
			} label: {
				Text("Cancel")
					.foregroundColor(.black)
					.padding(.trailing, 8)
					.transition(.move(edge: .trailing))
					.animation(.default)
			}

		}
		.onTapGesture {
			isEditing = true
		}
    }
}

#Preview {
	@State var text = "yoo"
	@State var isEditing = true
	return SearchBar(text: $text, isEditing: $isEditing)
}
