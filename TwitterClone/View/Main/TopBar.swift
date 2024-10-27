//
//  TopBar.swift
//  TwitterClone
//
//  Created by Uahit on 27.10.2024.
//

import SwiftUI

struct TopBar: View {
    var body: some View {
		VStack {
			HStack {
				Image("menu")
					.renderingMode(.template)
					.foregroundColor(Color("bg"))
					.frame(alignment: .leading)
//					.padding(.leading, 16)
				
				Spacer()
				
				Image("tweeter")
					.renderingMode(.template)
					.foregroundColor(Color("bg"))
					.frame(alignment: .center)
					.padding(.trailing)
				
				Spacer()
			}
			.padding(12)
			
			Rectangle()
				.frame(width: UIScreen.main.bounds.width, height: 1, alignment: .center)
				.foregroundColor(.gray)
				.opacity(0.3)
		}
    }
}

#Preview {
    TopBar()
}
