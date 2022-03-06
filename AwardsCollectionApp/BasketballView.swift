//
//  BasketballView.swift
//  AwardsCollectionApp
//
//  Created by Михаил Зверьков on 06.03.2022.
//

import SwiftUI

struct BasketballView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            let size = min(width, height)
            
            let nearLine = size * 0.1
            let farLine = size * 0.9
            let middle = size / 2
            let ballSize = size * 0.8
            
            Path { path in
                path.addEllipse(in: CGRect(x: nearLine,
                                           y: nearLine,
                                           width: ballSize,
                                           height: ballSize))
            }
            .fill(Color(red: 1, green: 0.4, blue: 0.1))
            
            Path { path in
                path.addEllipse(in: CGRect(x: nearLine,
                                           y: nearLine,
                                           width: ballSize,
                                           height: ballSize))
            }
            .stroke(Color.black, lineWidth: 3)
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearLine))
                path.addLine(to: CGPoint(x: middle, y: farLine))
            }
            .stroke(Color.black, lineWidth: 3)
            
            
            Path { path in
                path.move(to: CGPoint(x: nearLine, y: middle))
                path.addLine(to: CGPoint(x: farLine, y: middle))
            }
            .stroke(Color.black, lineWidth: 3)
            
            Path { path in
                path.addArc(
                    center: CGPoint(x: nearLine, y: middle),
                    radius: size * 0.26,
                    startAngle: .degrees(-70),
                    endAngle: .degrees(70),
                    clockwise: false
                )
            }
            .stroke(Color.black, lineWidth: 3)
            
            Path { path in
                path.addArc(
                    center: CGPoint(x: farLine, y: middle),
                    radius: size * 0.26,
                    startAngle: .degrees(-110),
                    endAngle: .degrees(110),
                    clockwise: true
                )
            }
            .stroke(Color.black, lineWidth: 3)
        }
    }
}

struct BasketballView_Previews: PreviewProvider {
    static var previews: some View {
        BasketballView()
    }
}
