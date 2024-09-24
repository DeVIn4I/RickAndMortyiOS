//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Razumov Pavel on 24.09.2024.
//

import Foundation

/// Represents unique API Endpoints
@frozen enum RMEndpoint: String {
    /// Endpoint to get characters info
    case character
    /// Endpoint to get locations info
    case location
    /// Endpoint to get episodes info
    case episode
}
