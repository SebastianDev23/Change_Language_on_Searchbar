
import SwiftUI


struct ContentView: View {
    
    
    let library: Library
    
    @State private var searchText = ""
    
    
    
    var body: some View {
        NavigationView {
            List {
                
                ForEach(dataVar)  { data in
                    Text(LocalizedStringKey(data.title))
                    
                    
                }
                
            }
            .searchable(text: $searchText)
        }
    }
    var dataVar: [Library] {
        if searchText.isEmpty {
            return libraryData
        } else {
            return libraryData.filter {($0.title.lowercased().contains(searchText.lowercased()))}
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(library: libraryData[0])
    }
}
