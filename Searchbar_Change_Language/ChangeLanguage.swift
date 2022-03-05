
import SwiftUI

struct ChangeLanguage: View {
    
    let library: Library
    
    
    @AppStorage("Language") var languageChange: String = ""
    
    var body: some View {
        
        
        VStack {
            Button {
                languageChange = "de"
            } label: {
               Text("German")
                    .padding()
            }
            .padding()
            Button {
                languageChange = "en"
            } label: {
                Text("English")
   
            }
            .padding()
            
            Text("DataBase")
                .padding()
            
            ForEach(libraryData) { data in
                Text(data.title)
                
            }
        }
        
        
        .environment(\.locale, .init(identifier: languageChange))
        
    }
}



struct ChangeLanguage_Previews: PreviewProvider {
    static var previews: some View {
        ChangeLanguage(library: libraryData[0])
            .environment(\.locale, .init(identifier: "de"))
        ChangeLanguage(library: libraryData[0])
            .environment(\.locale, .init(identifier: "en"))
    }
}
