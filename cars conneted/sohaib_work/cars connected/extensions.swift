//
//  extensions.swift
//  cars connected
//
//  Created by Sohaib Sajjad on 20/07/2022.
//

import Foundation
import SwiftUI


struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension UIScreen{
  static let screenWidth = UIScreen.main.bounds.size.width
  static let widthBlockSize = (UIScreen.main.bounds.size.width/100)
  static let screenHeight = UIScreen.main.bounds.size.height
  static let heightBlockSize = (UIScreen.main.bounds.size.height/100)
  static let screenSize = UIScreen.main.bounds.size
}


extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
