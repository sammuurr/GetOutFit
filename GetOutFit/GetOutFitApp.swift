//
//  GetOutFitApp.swift
//  GetOutFit
//
//  Created by Самур Гусейнов on 26.03.2022.
//

import SwiftUI

@main
struct GetOutFitApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            //ContentView()
              //  .environment(\.managedObjectContext, persistenceController.container.viewContext)
            MainScreen()
        }
    }
}
