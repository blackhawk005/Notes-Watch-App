//
//  Note.swift
//  Notes WatchKit Extension
//
//  Created by Shinit Shetty on 06/06/21.
//

import Foundation
import SwiftUI
struct Note: Codable, Identifiable {
    let id: UUID
    let text: String
}

var lines: Double = 1.0

