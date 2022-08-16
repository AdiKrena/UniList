import SwiftUI

struct UniversityDetail: View {
    var university: University
    
    var body: some View {
        ScrollView {
            university.image
                .resizable()
                .ignoresSafeArea()
                .frame(height: 300)
                .blur(radius: 5)
            
            CircleImage(image: university.image)
                .frame(width: 300, height: 300)
                .aspectRatio(contentMode: .fit)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(university.name)
                    .font(.title)
                
                Text(university.address)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(university.name)")
                    .font(.title2)
                Text(university.description)
                    .padding(.top, 2)
            }
            .padding()
            Spacer()
        }
        .navigationTitle(university.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct UniversityDetail_Previews: PreviewProvider {
    static var previews: some View {
        UniversityDetail(university: universities[7])
    }
}
