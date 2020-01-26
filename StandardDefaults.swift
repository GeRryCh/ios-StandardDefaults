import Foundation

extension UserDefaults {
    subscript<T>(key: String) -> T? {
        get {
            return value(forKey: key) as? T
        }
        set {
            return set(newValue, forKey: key)
        }
    }
    
    subscript<T: RawRepresentable>(key: String) -> T? {
        get {
            if let rawValue = value(forKey: key) as? T.RawValue {
                return T(rawValue: rawValue)
            }
            return nil
        }
        set {
            set(newValue?.rawValue, forKey: key)
        }
    }
}

public enum StandardDefaults {
    public static subscript<T>(key: String) -> T? {
        get {
            return UserDefaults.standard[key]
        }
        set {
            return UserDefaults.standard[key] = newValue
        }
    }
    
    public static subscript<T: RawRepresentable>(key: String) -> T? {
        get {
            return UserDefaults.standard[key]
        }
        set {
            return UserDefaults.standard[key] = newValue
        }
    }
}
