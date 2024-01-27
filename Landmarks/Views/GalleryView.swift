//
//  GalleryView.swift
//  Landmarks
//
//  Created by Ong Eason on 27/1/2024.
//

import SwiftUI

struct GalleryView: View {
    
    var body: some View {
        
        NavigationStack {
            
            LazyVGrid{
                
                ForEach(allLandmarks) { currentLandmark in
                    
                    NavigationLink {
                        DetailView(item: currentLandmark)
                    } label: {
                        GalleryItemView(item: currentLandmark)
                    }
                    
                }
                .navigationTitle("Landmarks")
                
            }
        }
    }
}

#Preview {
    GalleryView()
}
