//
//  ContentView.swift
//  TwitterClone
//
//  Created by Uahit on 20.10.2024.
//

import SwiftUI

struct Home: View {
	
	@State var selectedIndex = 0
	@State var showCtreateTwwet = false
	@State var text = ""
	
    var body: some View {
        VStack {
			ZStack {
				TabView {
					Feed()
						.onTapGesture {
							selectedIndex = 0
						}
						.tabItem {
							if selectedIndex == 0{
								Image("home")
									.renderingMode(.template)
									.foregroundColor(Color(""))
							} else {
								Image("home").renderingMode(.template).foregroundColor(Color(.gray))
							}
							Text("Home")
						}
	
					SearchView()
						.onTapGesture {
							selectedIndex = 1
						}
						.tabItem {
							if selectedIndex == 0{
								Image("search").renderingMode(.template).foregroundColor(Color(""))
							} else {
								Image("search").renderingMode(.template).foregroundColor(Color(.gray))
							}
							Text("Search")
						}

					NotificationsView()
						.onTapGesture {
							selectedIndex = 2
						}
						.tabItem {
							if selectedIndex == 0{
								Image("bell").renderingMode(.template).foregroundColor(Color("bg"))
							} else {
								Image("bell").renderingMode(.template).foregroundColor(Color(.gray))
							}
							Text("Notifications")
						}
					
					MessagesView()
						.onTapGesture {
							selectedIndex = 3
						}
						.tabItem {
							if selectedIndex == 0{
								Image("email").renderingMode(.template).foregroundColor(Color("bg"))
							} else {
								Image("email").renderingMode(.template).foregroundColor(Color(.gray))
							}
							Text("Message")
						}
				}
				
				VStack {
					Spacer()
					
					HStack {
						Spacer()
						
						Button {
							showCtreateTwwet.toggle()
						} label: {
							Text("Tweet")
								.padding(22)
								.background(Color("bg"))
								.foregroundColor(.white)
								.clipShape(.circle)
							
						}
						.padding(.bottom, 60)
						.padding(.horizontal, 20)
					}
				}
			}
			.sheet(isPresented: $showCtreateTwwet, content: {
				CreateTweetView(text: text)
			})
        }
//        .padding()
    }
}

#Preview {
    Home()
}
