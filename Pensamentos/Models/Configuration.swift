//
//  Configuration.swift
//  Pensamentos
//
//  Created by fgrmac on 05/12/17.
//  Copyright © 2017 Fulvio Resendes. All rights reserved.
//

import Foundation

enum UserDefaultsKeys: String {
    case timeInverval = "timeInterval"
    case colorScheme = "colorScheme"
    case autorefresh = "autorefresh"
}

class Configuration {
    
    let defaults = UserDefaults.standard
    static var shared: Configuration = Configuration()
    
    var timeInterval: Double {
        get {
            return defaults.double(forKey: UserDefaultsKeys.timeInverval.rawValue)
        }
        set {
            defaults.set(newValue, forKey: UserDefaultsKeys.timeInverval.rawValue)
        }
    }

    var colorScheme: Int {
        get {
            return defaults.integer(forKey: UserDefaultsKeys.colorScheme.rawValue)
        }
        set {
            defaults.set(newValue, forKey: UserDefaultsKeys.colorScheme.rawValue)
        }
    }

    var autorefresh: Bool {
        get {
            return defaults.bool(forKey: UserDefaultsKeys.autorefresh.rawValue)
        }
        set {
            defaults.set(newValue, forKey: UserDefaultsKeys.autorefresh.rawValue)
        }
    }

    private init() {
        if defaults.double(forKey: UserDefaultsKeys.timeInverval.rawValue) == 0 {
            defaults.set(8.0, forKey: UserDefaultsKeys.timeInverval.rawValue)
        }
    }
}
