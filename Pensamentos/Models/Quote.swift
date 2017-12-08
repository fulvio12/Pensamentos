//
//  Quote.swift
//  Pensamentos
//
//  Created by fgrmac on 05/12/17.
//  Copyright © 2017 Fulvio Resendes. All rights reserved.
//

import Foundation

struct Quote: Codable { // Encondable, Decodable
    let quote: String
    let author: String
    let image: String
    
    var quoteFormatted: String {
        return "‟" + quote + "〞"
    }
    
    var authorFormatted: String {
        return "- " + author + " -"
    }
}
