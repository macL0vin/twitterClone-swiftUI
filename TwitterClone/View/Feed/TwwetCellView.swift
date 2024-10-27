//
//  TwwetCellView.swift
//  TwitterClone
//
//  Created by Uahit on 26.10.2024.
//

import SwiftUI

struct TwwetCellView: View {
	
	var tweet: String
	var tweetImage: String?
	
    var body: some View {
		VStack {
			HStack(alignment: .top, spacing: 10, content: {
					
				Image("ghost")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 55, height: 55, alignment: .leading)
					.clipShape(.circle)
				
				VStack(alignment: .leading, spacing: 10, content: {
					HStack {
						Text("Name")
							.fontWeight(.bold)
							.foregroundColor(.primary)
												
						Text("@username")
							.foregroundColor(.primary)
					}
					
					Text(tweet)
						//.frame(maxHeight: 50, alignment: .top)
					
					if let image = tweetImage {
						GeometryReader { proxy in
							Image(image)
								.resizable()
								.aspectRatio(contentMode: .fill)
								.frame(width: proxy.frame(in: .global).width, height: 250)
								.cornerRadius(15)
							
						}.frame(height: 250)
					}
				})
			})
			
			// Reactions bar
			
			HStack(alignment: .top,
				   content:{
				
				Spacer()
				
				Button {
					
				} label: {
					Image("chat").resizable()
						.renderingMode(.template)
						.frame(width: 18, height: 18)
						.foregroundColor(.gray)
				}.padding(.leading, 16)
				
				Spacer()
				
				Button {
					
				} label: {
					Image("repost").resizable()
						.renderingMode(.template)
						.frame(width: 18, height: 18)
						.foregroundColor(.gray)
				}.foregroundColor(.gray)
				
				Spacer()
				
				Button {
					
				} label: {
					Image("heart").resizable()
						.renderingMode(.template)
						.frame(width: 18, height: 18)
						.foregroundColor(.gray)
				}.foregroundColor(.gray)
				
				Spacer()
				
				Button {
					
				} label: {
					Image("upload").resizable()
						.renderingMode(.template)
						.frame(width: 18, height: 18)
						.foregroundColor(.gray)
				}.foregroundColor(.gray)
				
				Spacer()
			})
			.padding(4)
		}
    }
}

#Preview {
	TwwetCellView(tweet: "lorem ipsum b la blassssss dad d ad  d a d a  da d ad  dad a d a jljlkjjljkl jlkjk  asd adasdas dsa d asda s")
}
