# 🎣 HookIt

Your Personal Fishing Guide & Digital Tackle Box
HookIt is a comprehensive, feature-rich iOS application designed to elevate the fishing experience. Built entirely in modern SwiftUI, it serves as an all-in-one companion for anglers of all skill levels, offering instant AI-powered species identification, real-time local conditions, and a built-in guide to fishing regulations.
Originally developed as a capstone project for iPhone App Development, HookIt showcases native iOS design patterns, seamless API integration, and on-device data management.

✨ Core Features
AI-Powered Identification: Snap or upload a photo of your catch and let Gemini AI instantly identify the exact fish species.
Interactive Species Guide: Access detailed profiles for various fish, including behavioral habits, best baits, optimal setups, and preferred habitats.
Local Fishing Regulations: Stay compliant with a quick-reference database of legal sizes, bag limits, and seasonal restrictions.
Catch Tracking & Personal Bests: Log your daily catches, monitor your personal records, and document your fishing journey.
Real-Time Conditions: View localized weather, upcoming tide times, and current moon phases right from the home screen.
Favorites & Fast Search: Bookmark your top-targeted species for quick access and use lightning-fast global search to find rules and guides in seconds.
Premium UI/UX: A polished, native iOS interface featuring a custom animated splash screen, intuitive navigation, and smooth transitions.

🛠 Tech Stack
UI Framework: SwiftUI
Architecture: MVVM (Model-View-ViewModel)
Location Services: CoreLocation
Artificial Intelligence: Google Gemini API

🚀 How to Run the App
Because this application utilizes a live AI model, API keys are deliberately excluded from version control for security. To build and run this project, you must provide your own Gemini API Key.

Clone the repository:
Bash
git clone https://github.com/ddinza/HookIt.git
cd HookIt

Configure the API Key:

Create a new file in the root of your Xcode project named secrets.plist.

Add a new row to the property list.

Set the Key name to GEMINI_API_KEY.

Set the Type to String.

Paste your personal Google Gemini API key into the Value field.

Build and Run:

Open HookIt.xcodeproj in Xcode.

Select your target iPhone Simulator or connect a physical device.

Hit Run (Cmd + R).
Note: Be sure to grant Location permissions when prompted so the app can accurately fetch local weather, tides, and moon phase data.
