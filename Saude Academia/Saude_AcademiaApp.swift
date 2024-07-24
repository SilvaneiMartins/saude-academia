import SwiftUI

@main
struct Saude_AcademiaApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                OnBoardingScreen()
            }
            .navigationViewStyle(.stack)
        }
    }
}
