//
//  SearchUserCell.swift
//  TwitterClone
//
//  Created by Uahit on 27.10.2024.
//

import SwiftUI

struct SearchUserCell: View {
    var body: some View {
		HStack {
			Image("ghost")
				.resizable()
				.scaledToFit()
				.frame(width: 44, height: 44)
				.background(Color("bg"))
				.clipShape(.circle)
			
			VStack(alignment: .leading, content: {
				Text("Name")
					.fontWeight(.heavy)
				Text("@username")
			})
			
			Spacer(minLength: 0)
		}
    }
}

#Preview {
    SearchUserCell()
}
