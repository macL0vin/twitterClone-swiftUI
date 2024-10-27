//
//  NotificationsCell.swift
//  TwitterClone
//
//  Created by Uahit on 27.10.2024.
//

import SwiftUI

struct NotificationsCell: View {
	
	@State var width = UIScreen.main.bounds.width
	
    var body: some View {
		VStack {
			Rectangle()
				.frame(width: width, height: 1, alignment: .center)
				.foregroundColor(.gray)
				.opacity(0.3)
			
			HStack(alignment: .top, content: {
				Image("user")
					.resizable()
					.renderingMode(.template)
					.foregroundColor(.blue)
					.scaledToFit()
					.frame(width: 20, height: 20)
		
				
				VStack(alignment: .leading, spacing: 5, content: {
					Image("ghost")
						.resizable()
						.scaledToFit()
						.frame(width: 36, height: 36)
						.background(Color("bg"))
						.cornerRadius(18)
					
					Text("Name")
						.fontWeight(.bold)
					+
					Text(" followed you")
				})
				
				Spacer()
			})
			.padding(.leading, 30)
		}
    }
}

#Preview {
    NotificationsCell()
}
