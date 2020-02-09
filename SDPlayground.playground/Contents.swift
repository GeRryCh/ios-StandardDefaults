import Foundation

enum AnyEnum: Int {
    case CaseOne
    case CaseTwo
}

StandardDefaults["com.number.example"] = 4
if let number = StandardDefaults<Int>["com.number.example"] {
    print(number)
}

StandardDefaults["com.enum.example"] = AnyEnum.CaseOne
if let anyEnum = StandardDefaults<AnyEnum>["com.enum.example"] {
    print(anyEnum)
}

StandardDefaults["name"] = "German"
if let name = StandardDefaults<String>.name {
    print(name)
}
