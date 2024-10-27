//
//  SearchCell.swift
//  TwitterClone
//
//  Created by Uahit on 27.10.2024.
//

import SwiftUI

struct SearchCell: View {
	
	var tag = ""
	var tweets = ""
	
    var body: some View {
		VStack(alignment: .leading, spacing: 5, content: {
			Text("bold").fontWeight(.heavy)
			Text(tweets+" tweets").fontWeight(.light)
		})
    }
}

#Preview {
    SearchCell()
}
