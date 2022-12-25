

import SwiftUI


@main
struct IntroweekApp: App {
    
    @StateObject var introweekStore = IntroweekStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(introweekStore)
        }
    }
}
