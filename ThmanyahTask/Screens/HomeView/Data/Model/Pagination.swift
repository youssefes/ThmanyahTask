
import Foundation
struct Pagination : Codable {
	let nextPage : String?
	let totalPages : Int?

	enum CodingKeys: String, CodingKey {
		case nextPage = "next_page"
		case totalPages = "total_pages"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
        nextPage = try values.decodeIfPresent(String.self, forKey: .nextPage)
        totalPages = try values.decodeIfPresent(Int.self, forKey: .totalPages)
	}

}
