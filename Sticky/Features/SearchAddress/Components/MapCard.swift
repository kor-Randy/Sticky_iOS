//
//  Map.swift
//  Sticky
//
//  Created by deo on 2021/01/20.
//

import MapKit
import SwiftUI

// MARK: - MapCard

struct MapCard: View {
    @EnvironmentObject var searchService: LocationSearchService

    var body: some View {
        Map(
            coordinateRegion: $searchService.region,
            showsUserLocation: true
        )
        .frame(width: 280, height: 210)
        .cornerRadius(24)
    }
}

// MARK: - Map_Previews

struct Map_Previews: PreviewProvider {
    static var previews: some View {
        MapCard().environmentObject(LocationManager())
    }
}