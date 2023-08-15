//
//  CurvedShape.swift
//  MySpar
//
//  Created by Anton on 15.08.23.
//

import SwiftUI

struct CurvedShape: View {
    var color: Color = .red
    var topLeftRadius: CGFloat = 0.0
    var topRightRadius: CGFloat = 0.0
    var bottomLeftRadius: CGFloat = 0.0
    var bottomRightRadius: CGFloat = 0.0
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                
                let width = geometry.size.width
                let height = geometry.size.height
                
                let topRight = min(min(self.topRightRadius, height/2), width/2)
                let topLeft = min(min(self.topLeftRadius, height), width/2)
                let bottomLeft = min(min(self.bottomLeftRadius, height/2), width/2)
                let bottomRight = min(min(self.bottomRightRadius, height/2), width/2)
                
                path.move(to: CGPoint(x: width / 2.0, y: 0))
                path.addLine(to: CGPoint(x: width - topRight, y: 0))
                path.addArc(center: CGPoint(x: width - topRight, y: topRight), radius: topRight, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: width, y: height - bottomRight))
                path.addArc(center: CGPoint(x: width - bottomRight, y: height - bottomRight), radius: bottomRight, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                path.addLine(to: CGPoint(x: bottomLeft, y: height))
                path.addArc(center: CGPoint(x: bottomLeft, y: height - bottomLeft), radius: bottomLeft, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: topLeft))
                path.addArc(center: CGPoint(x: topLeft, y: topLeft), radius: topLeft, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
            }
            .fill(self.color)
            .opacity(0.4)
        }
    }
}
