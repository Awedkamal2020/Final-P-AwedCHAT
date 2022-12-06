//
//  Extentions .swift
//  cisc_225_awedchat
//
//  Created by Awet Hussen on 11/30/22.
//

import Foundation
import SwiftUI

// extenstion for adding rounded coners to specific corners
extension View{
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
    }
}

// Custom rounded Corners shapes used for cornerRadius Extentions above
struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners,cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
