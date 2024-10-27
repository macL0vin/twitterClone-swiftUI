//
//  NotificationsView.swift
//  TwitterClone
//
//  Created by Uahit on 20.10.2024.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
		VStack {
			ScrollView {
				ForEach(0..<19) { _ in
					NotificationsCell()
				}
			}
		}
    }
}

#Preview {
    NotificationsView()
}
