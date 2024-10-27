//
//  MessageCell.swift
//  TwitterClone
//
//  Created by Uahit on 27.10.2024.
//

import SwiftUI

struct MessageCell: View {
	var width = UIScreen.main.bounds.width
	
    var body: some View {
		HStack {
//			Image("ghost")
//				.resizable()
//				.scaledToFit()
//				.frame(width: 54, height: 54, alignment: .leading)
//				.background(Color("bg"))
//				.clipShape(.circle)
//				.padding(.leading, 16)
			
			VStack(alignment: .leading, content: {
				Rectangle().frame(width: width, height: 1, alignment: .center)
					.foregroundColor(.gray)
					.opacity(0.3)
				
				HStack {
					Image("ghost")
						.resizable()
						.scaledToFit()
						.frame(width: 60, height: 60, alignment: .leading)
						.background(Color("bg"))
						.clipShape(.circle)
						.padding(.leading, 16)
					
					VStack(alignment: .leading, content: {
						HStack {
							Text("Name")
								.fontWeight(.bold)
							Text("@username")
								.foregroundColor(.gray)
							
							Spacer()
							Text("02/05/2024")
								.frame(alignment: .trailing)
								.padding(.leading, 10)
								.padding(.trailing, 16)
								.foregroundColor(.gray)
						}
						
						Text("Author: message").frame(alignment: .leading).foregroundColor(.gray)
					})
				}
				.padding(.top,2)
//				Text("Author: message").frame(alignment: .leading).foregroundColor(.gray)
				
//				Spacer()
			}).frame(width: width, height: 84, alignment: .center)
		}
    }
}

#Preview {
    MessageCell()
}
