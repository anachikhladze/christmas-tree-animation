//
//  AcademyAnimationView.swift
//  SwiftUIAnimationsTask
//
//  Created by Anna Sumire on 24.12.23.
//

import SwiftUI

struct AcademyAnimationView: View {
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            Text("TBC IT Academy")
                .font(.system(size: 20))
                .scaleEffect(isAnimating ? 1.5 : 1)
                .foregroundStyle(EllipticalGradient(
                    colors:[Color.red, Color.green],
                    center: .center,
                    startRadiusFraction: 0.0,
                    endRadiusFraction: 0.5))
            
                .onAppear() {
                    withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                        self.isAnimating = true
                    }
                }
        }
    }
}

#Preview {
    AcademyAnimationView()
}
