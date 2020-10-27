//
//  UserData.swift
//  Landmarks
//
//  Created by 松田智之 on 2020/10/26.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
