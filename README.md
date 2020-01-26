# ios-StandardDefaults
A wrapper around standard UserDefaults for getting/setting values using Swift `subscript` method, with ability to
store `enum`s containing a `rawValue`.

Usage Example
-------------

```Swift
//1. storing any value
StandardDefaults["com.number.example"] = 4
if let number: Int = StandardDefaults["com.number.example"] {
    print(number)
}

//2. storing enum value
enum AnyEnum: Int {
    case CaseOne
    case CaseTwo
}


StandardDefaults["com.enum.example"] = AnyEnum.CaseOne
if let anyEnum: AnyEnum = StandardDefaults["com.enum.example"] {
    print(ido)
}
```
