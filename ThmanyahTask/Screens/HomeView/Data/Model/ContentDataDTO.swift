
import Foundation
struct ContentDataDTO : Codable {
    let episodeId: String?
	let podcastId : String?
	let name : String?
	let description : String?
	let avatarUrl : String?
	let episodeCount : Int?
	let duration : Int?
	let language : String?
	let priority : Int?
	let popularityScore : Int?
	let score : Double?
    let audioUrl : String?
    let releaseDate: String?
    let authorName: String?
	enum CodingKeys: String, CodingKey {

		case podcastId = "podcast_id"
		case name = "name"
		case description = "description"
		case avatarUrl = "avatar_url"
		case episodeCount = "episode_count"
		case duration = "duration"
		case language = "language"
		case priority = "priority"
		case popularityScore = "popularityScore"
		case score = "score"
        case audioUrl = "audio_url"
        case releaseDate = "release_date"
        case authorName = "author_name"
        case episodeId = "episode_id"
	}
}
