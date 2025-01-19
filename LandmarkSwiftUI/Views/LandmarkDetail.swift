import SwiftUI

struct LandmarkDetail: View {
    
    @EnvironmentObject var modelData: ModelData  // Use @EnvironmentObject instead of @Environment
    
    var landmark: Landmark
    
    // Fix: Use modelData instead of model, and correct access to landmarks
    var landMarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }

    var body: some View {
        ScrollView {
            VStack {
                MapView(coordinate: landmark.locationCoordinate)
                    .frame(height: 300)

                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)

                VStack(alignment: .leading) {
                    HStack {
                        Text(landmark.name)
                            .font(.title)
                        // Make sure FavoriteButton works with the binding
                        FavoriteButton(isSet: $modelData.landmarks[landMarkIndex].isFavorite)
                    }
                    HStack {
                        Text(landmark.park)
                            .font(.subheadline)
                        Spacer()
                        Text(landmark.state)
                            .font(.subheadline)
                    }
                    
                    Divider()
                    
                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                        .font(.body)
                      
                       
                }
                .padding()
               
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0])
            .environmentObject(ModelData())  // Inject the ModelData environment object
    }
}
