

import SwiftUI

@main
struct Searchbar_Change_LanguageApp: App {
    
    @AppStorage("Language") var languageChange: String = ""
    
    
    var body: some Scene {
        WindowGroup {
            TabViewMaster()
                .environment(\.locale, .init(identifier: languageChange))
        }
    }
}
