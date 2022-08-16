import Foundation
import SwiftUI

struct University: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var address: String
    var description: String
    var founded: Int
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
