import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle()) 
            
            Text(landmark.name)
                .font(.headline)

            Spacer()

            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
        .padding(.vertical, 4) // Adjusts vertical spacing for alignment
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        let modelData = ModelData()

        return Group {
            LandmarkRow(landmark: modelData.landmarks[0])
                .previewLayout(.sizeThatFits) // Previews the row with its natural size
                .previewDisplayName("Landmark Row 1") // Adds a label to the preview
            
            LandmarkRow(landmark: modelData.landmarks[1])
                .previewLayout(.sizeThatFits)
                .previewDisplayName("Landmark Row 2")
        }
    }
}
