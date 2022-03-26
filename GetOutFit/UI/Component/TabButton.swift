//
//  TabButton.swift
//  GetOutFit
//
//  Created by Денис Большачков on 26.03.2022.
//

import Foundation
import SwiftUI

enum Tab: String {
    case Home = "house.fill"
    case Heart = "heart.fill"
    case Person = "person.fill"
}

class BaseViewModel: ObservableObject {
    @Published var currentTab: Tab = .Home
}
