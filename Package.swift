import PackageDescription

let package = Package(
    name: "vertigram-bot",
	dependencies: [
		.Package(url: "https://github.com/zmeyc/telegram-bot-swift.git", majorVersion: 0)
	]
)
