import Foundation

public extension UserDefaults {
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

@dynamicMemberLookup
public enum StandardDefaults<T> {
    public static subscript(key: String) -> T? {
        get {
            return UserDefaults.standard[key]
        }
        set {
            return UserDefaults.standard[key] = newValue
        }
    }
    
    public static subscript(dynamicMember key: String) -> T? {
        return StandardDefaults<T>[key]
    }
}

extension StandardDefaults where T: RawRepresentable {
    public static subscript(key: String) -> T? {
        get {
            return UserDefaults.standard[key]
        }
        set {
            return UserDefaults.standard[key] = newValue
        }
    }
}
