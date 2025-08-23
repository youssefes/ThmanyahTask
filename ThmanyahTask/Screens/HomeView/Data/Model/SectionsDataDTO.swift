
import Foundation
struct SectionsDataDTO : Codable {
	let name : String?
	let type : SectionsType?
	let contentType : ContentType
	let order : Int?
    let content : [ContentDataDTO]?
    
    enum CodingKeys: String, CodingKey {

        case name = "name"
        case type = "type"
        case contentType = "content_type"
        case order = "order"
        case content = "content"
    }
}

enum SectionsType: Codable {
    case square
    case twolinesGrid
    case bigSquare
    case bigSquareAudio
    case queue
    case unknown(String)
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        
        switch rawValue.lowercased() {
        case "big square":
            self = .bigSquare
        case "big_square":
            self = .bigSquareAudio
        case "2_lines_grid":
            self = .twolinesGrid
        case "queue":
            self = .queue
        case "square":
            self = .square
        default:
            self = .unknown(rawValue)
        }
    }
}
