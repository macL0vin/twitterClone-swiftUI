//
//  Feed.swift
//  TwitterClone
//
//  Created by Uahit on 20.10.2024.
//

import SwiftUI

struct Feed: View {
	var body: some View {
		ScrollView(.vertical, showsIndicators: false, content: {
			VStack(spacing: 18, content: {
				ForEach(1..<20, id: \.self) { item in
					if item.isMultiple(of: 3) {
						TwwetCellView(tweet: "lorem ipsum b la blassssss dad d ad  d a d a  da d ad  dad a d a jljlkjjljkl jlkjk  asd adasdas dsa d asda s", tweetImage: "sticker_10")
					} else {
						TwwetCellView(tweet: "lorem ipsum b la blassssss dad d ad  d a d a  da d ad  dad a d a jljlkjjljkl jlkjk  asd adasdas dsa d asda s")
					}
					Divider()
				}
			})
			.padding(.top)
			.padding(.horizontal)
			.zIndex(0)
		})
	}
}

#Preview {
	Feed()
}
