//
//  practice.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 08/09/2022.
//



import Foundation


struct LottieAnimations {
    
    
    static let successAnimation = "117335-red-check (1)"
   
    static let deletedSuccessfully = "84228-delete-animation"
    
}



import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    
    let name : String
    let loopMode : LottieLoopMode = .loop

    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        let view = UIView(frame: .zero)

        let animationView = AnimationView()
        let animation = Animation.named(name)
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loopMode
        animationView.play()

        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])

        return view
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}



