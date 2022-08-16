import SwiftUI

struct UniversityRow: View {
    var university: University
    
    var body: some View {
        HStack {
            university.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(university.name)
                .multilineTextAlignment(.leading)
        
            Spacer()
        }
    }
}

struct UniversityRow_Previews: PreviewProvider {
    static var previews: some View {
        UniversityRow(university: universities[0])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
