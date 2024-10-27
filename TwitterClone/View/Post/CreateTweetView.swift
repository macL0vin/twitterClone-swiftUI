//
//  CreateTweetView.swift
//  TwitterClone
//
//  Created by Uahit on 26.10.2024.
//

import SwiftUI

struct CreateTweetView: View {
	
	@State var text = ""
	
    var body: some View {
		VStack {
			HStack {
				Button {
					
				} label: {
					Text("Cancel")
				}
				
				Spacer()
				
				Button {
					
				} label: {
					Text("Tweet")
						.padding(10)
				}
				
				.background(Color("bg"))
				.foregroundColor(.white)
				.clipShape(.capsule)
			}
			.padding(16)
			
//			TextField("Start tweeting ...", text: $text)
//				.border(Color.blue, width: 1)
//				.cornerRadius(8.0)
//				.foregroundColor(.black)
//				.padding(16)
			
			MultilineTextfield(text: $text)
		}
    }
}

#Preview {
    CreateTweetView()
}
