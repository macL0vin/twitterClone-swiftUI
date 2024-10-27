//
//  MessagesView.swift
//  TwitterClone
//
//  Created by Uahit on 20.10.2024.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
		VStack {
			ScrollView {
				ForEach(0..<9) { _ in
					MessageCell()
				}
			}
		}
    }
}

#Preview {
    MessagesView()
}
