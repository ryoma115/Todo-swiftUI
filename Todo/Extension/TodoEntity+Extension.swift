//
//  TodoEntity+Extension.swift
//  Todo
//
//  Created by N. Ryoma on 2022/04/26.
//

import CoreData
import SwiftUI

extension TodoEntity {
    enum Category: Int16 {
        case ImpUrg_1st
        case ImpUrg_2nd
        case ImpUrg_3rd
        case ImpUrg_4th
        
        func toString() -> String {
            switch self {
            case .ImpUrg_1st:
                return "重要かつ緊急"
            case .ImpUrg_2nd:
                return "重要だが緊急ではない"
            case .ImpUrg_3rd:
                return "重要でないが緊急"
            case .ImpUrg_4th:
                return "重要でも緊急でもない"
            }
        }
        func color() -> Color {
            switch self {
            case .ImpUrg_1st:
                return .tRed
            case .ImpUrg_2nd:
                return .tBlue
            case .ImpUrg_3rd:
                return .tGreen
            case .ImpUrg_4th:
                return .tYellow
            }
        }
    }
    
    enum State: Int16 {
        case todo
        case done
    }
}
