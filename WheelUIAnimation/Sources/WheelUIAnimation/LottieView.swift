//
//  LottieView.swift
//  WheelUIAnimation
//
//  Created by Adam Dahan on 2022-01-12.
//

import SwiftUI
import Lottie

public struct LottieView {
    
    // MARK: - Dependencies
    
    private let animationName: String
    private let loopMode: LottieLoopMode
    
    public init(animationName: String, loopMode: LottieLoopMode) {
        self.animationName = animationName
        self.loopMode = loopMode
    }
}

// MARK: - UIViewRepresentable

extension LottieView: UIViewRepresentable {
    
    public func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        
        // Create an empty content UIView to constrain the lottie view.
        let view = UIView(frame: .zero)

        // Create the animation from the animationName
        let animation = Animation.named(animationName)

        // Create an animation view
        let animationView = AnimationView()
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loopMode

        // Pre-heat the animation
        animationView.play()

        // Add the animation view to the content view
        view.addSubview(animationView)
        
        // Finally constrain it
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])

        // Return the content
        return view
    }
    
    public func updateUIView(_ uiView: UIViewType, context: Context) {}
}

// MARK: - Demo

extension LottieView {
    private enum Constants {
        static let animationName: String = "happy"
    }

    static var demo: some View {
        LottieView(animationName: Constants.animationName, loopMode: .loop)
    }
}

