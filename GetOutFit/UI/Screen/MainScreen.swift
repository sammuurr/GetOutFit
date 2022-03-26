//
//  MainScreen.swift
//  GetOutFit
//
//  Created by Денис Большачков on 26.03.2022.
//

import SwiftUI

struct MainScreen: View {
    
    @StateObject var baseData = BaseViewModel()
    
    var body: some View {
        TabView(selection: $baseData.currentTab) {
            Text("Home")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .tag(Tab.Home)
                .background(Color.black.opacity(0.5))
            
            Text("heart")
                .tag(Tab.Heart)
            
            Text("Person")
                .tag(Tab.Person)
            
            Text("Home")
                .tag(Tab.Home)
        }
        .overlay(
            //Custom Tab Bar
            
            HStack (spacing: 0) {
                TabButton(Tab: .Home)
                TabButton(Tab: .Heart)
                TabButton(Tab: .Person)
            }
                .background(.white)
            ,alignment: .bottom
        )
    }
    
    @ViewBuilder
    func TabButton(Tab: Tab) ->  some View {
        Button {
            withAnimation {
                baseData.currentTab = Tab
            }
        } label: {
            if baseData.currentTab == Tab {
            Image(systemName: Tab.rawValue)
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 25)
                .foregroundColor(baseData.currentTab == Tab ?
                                    .white : Color.gray)
            
                .offset(baseData.currentTab == Tab ? CGSize(width: 0, height: -10) : CGSize(width: 0, height: 0))
                .frame(maxWidth: .infinity)
                .background(
                    ZStack {
                        Circle()
                            .fill(.white)
                            .frame(width: 50, height: 50)
                            .offset(baseData.currentTab == Tab ? CGSize(width: 0, height: -10) : CGSize(width: 0, height: 0))
                        
                        Circle()
                            .fill(Color.AccentColor)
                            .frame(width: 40, height: 40)
                            .offset(baseData.currentTab == Tab ? CGSize(width: 0, height: -10) : CGSize(width: 0, height: 0))
                    })
                .transition(.scale)
            } else {
                Image(systemName: Tab.rawValue)
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25)
                    .foregroundColor(baseData.currentTab == Tab ?
                                        .white : Color.gray)
                
                    .offset(baseData.currentTab == Tab ? CGSize(width: 0, height: -10) : CGSize(width: 0, height: 0))
                    .frame(maxWidth: .infinity)
                
            }
            
        }
    }
}


struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
