# News Cloud

A Flutter application for browsing the latest news headlines by category. This app fetches top news articles from NewsAPI and displays them in a clean, user-friendly interface.

## Features

- **Category-based News Browsing**: Explore news in various categories including Business, Entertainment, General, Health, Science, Sports, and Technology.
- **Real-time Headlines**: Fetches the latest top headlines from NewsAPI.
- **Responsive UI**: Built with Flutter for a smooth experience on Android, iOS, and other platforms.
- **Image Support**: Displays article images where available.
- **Error Handling**: Gracefully handles network errors and missing data.

## Screenshots

<!-- Add screenshots here -->
*Coming soon*

## Prerequisites

Before running this project, ensure you have the following installed:

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (version 3.8.1 or later)
- [Dart SDK](https://dart.dev/get-dart) (included with Flutter)
- An IDE like [Visual Studio Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio)

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/news_cloud.git
   cd news_cloud
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Set up API Key**:
   - This app uses [NewsAPI](https://newsapi.org/) to fetch news data.
   - The current API key is hardcoded for demonstration purposes. For production use, obtain your own free API key from [NewsAPI](https://newsapi.org/register).
   - Replace the API key in `lib/services/news_service.dart`:
     ```dart
     'https://newsapi.org/v2/top-headlines?apiKey=YOUR_API_KEY_HERE&category=$category'
     ```

4. **Run the app**:
   ```bash
   flutter run
   ```

## Usage

- Launch the app on your device or emulator.
- Browse through different news categories by tapping on the category icons.
- Tap on any news article to view more details (if implemented in the full version).
- Pull to refresh or navigate back to categories.

## Dependencies

- **Flutter**: UI framework
- **Dio**: HTTP client for API requests
- **Cupertino Icons**: Icon pack for iOS-style icons

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── models/
│   ├── article_model.dart    # News article data model
│   └── category_model.dart   # Category data model
├── services/
│   └── news_service.dart     # API service for fetching news
├── views/
│   ├── Home_page.dart        # Main home screen
│   └── category_news_page.dart # Category-specific news page
├── widgets/
│   ├── category_list_view.dart   # Horizontal category list
│   ├── News_list_view.dart       # News list widget
│   ├── News_list_view_builder.dart # Builder for news list
│   └── news_tile.dart            # Individual news item widget
└── items/
    └── category.dart         # Category item definitions
```

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature (`git checkout -b feature/AmazingFeature`).
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`).
4. Push to the branch (`git push origin feature/AmazingFeature`).
5. Open a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [NewsAPI](https://newsapi.org/) for providing the news data.
- [Flutter](https://flutter.dev/) for the amazing cross-platform framework.
- This project is part of a Udemy Flutter course.
