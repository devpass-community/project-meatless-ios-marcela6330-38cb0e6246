import Foundation

struct Restaurant: Codable {
    let name, distance, status, openDays: String
    let image: String
    let menu: [MenuItem]
}

struct MenuItem: Codable {
    let name: String
    let price: Double
    let image: String
}

enum Image: String, Codable {
    case meal1
    case meal2
    case meal3
    case meal4
    case meal5
    case meal6
}

enum Meal: String, Codable {
    case berryBlast
    case greenGoddessJuice
    case portobelloMushroomBurgerWithSweetPotatoFries
    case quinoaSaladWithRoastedVegetables
    case tempehTeriyakiBowl
    case zucchiniNoodlePadThai
}
