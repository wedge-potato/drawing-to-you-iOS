//
//  Font+.swift
//  DrawingToYou-iOS
//
//  Created by 김혜수 on 11/28/23.
//

import SwiftUI

extension Font {
    enum Style {
        case heading1
        case body1
        case caption1
        
        var size: CGFloat {
            switch self {
            case .heading1:
                return 21
            case .body1:
                return 16
            case .caption1:
                return 11
            }
        }
    }

    static func style(_ style: Style) -> Font {
        return .custom("Dovemayo_gothic", size: style.size)
    }
}
