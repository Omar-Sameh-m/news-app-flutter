# News Cloud

A Flutter application for browsing the latest news headlines by category. This app fetches top news articles from NewsAPI and displays them in a clean, user-friendly interface.

## Features

- **Category-based News Browsing**: Explore news in various categories including Business, Entertainment, General, Health, Science, Sports, and Technology.
- **Real-time Headlines**: Fetches the latest top headlines from NewsAPI.
- **Responsive UI**: Built with Flutter for a smooth experience on Android, iOS, and other platforms.
- **Image Support**: Displays article images where available.
- **Error Handling**: Gracefully handles network errors and missing data.

## Screenshots
<img width="484" height="1000" alt="Screenshot 2025-09-26 164028" src="https://github.com/user-attachments/assets/c1381616-7067-47bb-b216-fc8be2f6db24" />


*Coming soon*


 **Set up API Key**:
   - This app uses [NewsAPI](https://newsapi.org/) to fetch news data.
   - The current API key is hardcoded for demonstration purposes. For production use, obtain your own free API key from [NewsAPI](https://newsapi.org/register).
   - Replace the API key in `lib/services/news_service.dart`:
     ```dart
     'https://newsapi.org/v2/top-headlines?apiKey=YOUR_API_KEY_HERE&category=$category'
     ```


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

