//
//  Haptic Feedback.swift
//  Tradle
//
//  Created by Yuvraj Rahul Patkar on 22/11/2024.
//

import Foundation

public func hapticSuccessFeedback() {
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
    }
