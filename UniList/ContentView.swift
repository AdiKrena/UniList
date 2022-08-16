import SwiftUI

struct ContentView: View {
    @State private var showingProfile = false
    
    var body: some View {
        NavigationView {
            List(universities) { university in 
                NavigationLink {
                    UniversityDetail(university: university)
                } label: {
                    UniversityRow(university: university)
                }
            }
            .listStyle(.inset)
            .navigationTitle("Universities")
            .toolbar {
                Button {
                    showingProfile.toggle()
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                }
            }
            .sheet(isPresented: $showingProfile) {
                Profile()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
