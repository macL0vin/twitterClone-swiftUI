//
//  MultilineTextfield.swift
//  TwitterClone
//
//  Created by Uahit on 26.10.2024.
//

import SwiftUI

struct MultilineTextfield: UIViewRepresentable {
	
	func makeCoordinator() -> MultilineTextfield.Coordinator {
		.init(parent: self)
	}
	
	@Binding var text: String
	
	func makeUIView(context: Context) -> some UIView {
		let text = UITextView()
		text.isEditable = true
		text.isUserInteractionEnabled = true
		text.text = "Type something"
		text.textColor = .gray
		text.font = .systemFont(ofSize: 20)
		text.delegate = context.coordinator
		return text
	}
	
	func updateUIView(_ uiView: UIViewType, context: Context) {
		
	}
	
	class Coordinator: NSObject, UITextViewDelegate {
		var parent: MultilineTextfield
		
		init(parent: MultilineTextfield) {
			self.parent = parent
		}
		
		func textViewDidBeginEditing(_ textView: UITextView) {
			textView.text = ""
			textView.textColor = .black
		}
		
		func textViewDidChange(_ textView: UITextView) {
			self.parent.text = textView.text
		}
	}
}

//#Preview {
//    MultilineTextfield()
//}
