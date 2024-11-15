
import SwiftUI

struct ContentView: View {
    @State var currentTab: Tab = .home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0.0) {
                TabView(selection: $currentTab) {
                    HomeView()
                        .tag(Tab.home)
                    
                    Text("Location")
                        .tag(Tab.location)
                    
                    Ticketview()
                        .tag(Tab.ticket)
                    
                    Text("Category")
                        .tag(Tab.category)
                    
                    Text("Profile")
                        .tag(Tab.profile)
                }
                
                CustomTabBar(currentTab: $currentTab)
                
            }
            .ignoresSafeArea(.keyboard)
        }
    }
}
#Preview {
    ContentView()
}
