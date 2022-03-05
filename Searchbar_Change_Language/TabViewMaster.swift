
import SwiftUI

struct TabViewMaster: View {
    
    
    var body: some View {
        
        
        TabView {
            
            
            ContentView(library: libraryData[0])
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ChangeLanguage(library: libraryData[0])
                .tabItem {
                    Label("Change", systemImage: "gear")
            }
        }
    }
}
struct TabViewMaster_Previews: PreviewProvider {
    static var previews: some View {
        TabViewMaster()
    }
}
