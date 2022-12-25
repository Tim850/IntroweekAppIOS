//
//  ContentView.swift
//  Pokedex
//
//  Created by Kevin van den Hoek on 13/10/2022.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    // EnvironmentObjects
    @EnvironmentObject var introweekStore: IntroweekStore
    
    // TabView selection
    @State private var selection = 2
    
    var body: some View {
        
        TabView(selection:$selection) {
            
            
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text(NSLocalizedString("Home", comment: ""))
                }
                .tag(1)
            VerenigingenView()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text(NSLocalizedString("Associations", comment: ""))
                }
                .tag(2)
            HelpView()
                .tabItem {
                    Image(systemName: "questionmark.circle.fill")
                    Text(NSLocalizedString("Help", comment: ""))
                }
                .tag(3)
            AccountView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text(NSLocalizedString("Account", comment: ""))
                }
                .tag(4)
            ScoreView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text(NSLocalizedString("Score", comment: ""))
                }
                .tag(5)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ModerationView()){
                    Image(systemName: "person.2.square.stack.fill")
                }
            }
        }
    }
}

// MARK: Action handlers
private extension ContentView {
    
    func handleOnAppear() {
        //SomethingStore.loadData()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
