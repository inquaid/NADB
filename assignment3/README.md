# Quiz Master 🎯

A sleek, premium, Material 3-based Flutter Quiz application designed to test your knowledge with local Dart & Flutter quizzes or dynamically loaded topics from the OpenTrivia Database.

---

## 🚀 Key Features & Enhancements

We've enhanced the app with 5 major improvements:

### 1. Robust Architecture & Analyzer Clean-Up
- Fixed all compiler syntax errors and deprecation warnings (e.g., replaced deprecated `.withOpacity` calls with `.withValues` for precision).
- Enhanced `AuthProvider` initialization to handle offline, mock, or uninitialized Firebase settings gracefully during testing.
- Created a robust widget test pipeline verifying proper navigation and rendering.

### 2. Category Selection & OpenTDB API Integration
- Added a beautiful category grid on the Dashboard.
- Integrated the remote `QuizProvider` and `QuizService` to fetch trivia dynamically from the **OpenTrivia Database (OpenTDB)**.
- Integrated categories: **General Knowledge, Science & Nature, Computers & Tech, Geography, and History**.
- Implemented state-of-the-art loading overlays during API fetches and error handling toast notifications.

### 3. Interactive Question Explanations
- Transformed the quiz screen to give instant learning feedback.
- When an answer is selected (or times out), a feedback card immediately renders with a color-coded success/error border and a detailed explanation of the correct answer.

### 4. Gamified Question Timer
- Introduced a 15-second countdown timer for every question.
- Styled with a circular/linear progress indicator that dynamically transitions colors (Green ➔ Amber ➔ Red) as time runs out.
- Automatically marks the question as incorrect/skipped with a "Time's Up!" notification if the clock reaches zero.

### 5. Slate Dark Mode & Premium Theming
- Built a custom `ThemeProvider` utilizing ChangeNotifier.
- Added a sleek slate-based dark theme (`AppTheme.darkTheme`) matching professional design systems.
- Embedded a theme selector toggle directly in the dashboard header.

---

## 🛠 Tech Stack & State Management
- **Core**: Flutter & Dart (Environment target: SDK ^3.12.1)
- **Routing**: `go_router` for declarative navigation (handles redirection for authenticated and unauthenticated states).
- **State Management**: `provider` (MultiProvider managing Auth, Theme, and Quiz states).
- **Networking**: `dio` for high-performance REST calls to the OpenTDB API.
- **Backend (Auth)**: `firebase_core` & `firebase_auth` (fallback to local mock login if offline).

---

## 📖 Getting Started

### Prerequisites
- Flutter SDK (>= 3.12.1)
- Dart SDK

### Installation
1. Clone the repository.
2. Get dependencies:
   ```bash
   flutter pub get
   ```
3. Run the analyzer to ensure clean code:
   ```bash
   flutter analyze
   ```
4. Run tests:
   ```bash
   flutter test
   ```
5. Launch the app locally:
   ```bash
   flutter run
   ```
