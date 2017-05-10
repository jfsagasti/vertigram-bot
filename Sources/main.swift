import TelegramBot
import Foundation

let bot = TelegramBot(token: "TOKEN")
let command = "/VERT "

func vertigram(with text: String) -> String {
	let horizontalString = text.characters.reduce ("", { $0.0 + String($0.1) + "  "})
	var verticalString = String(text.characters.dropFirst())
	verticalString = verticalString.characters.reduce ("", {$0.0 + "\n" + String($0.1)})
	return horizontalString + verticalString
}


while let update = bot.nextUpdateSync() {
	if let message = update.message, let text = message.text?.uppercased() {
		let parsedText = text.replacingOccurrences(of: command, with: "")
		bot.sendMessageAsync(chat_id: message.chat.id,
		                     text: vertigram(with: parsedText))
	}
}

fatalError("Server stopped due to error: \(bot.lastError)")
