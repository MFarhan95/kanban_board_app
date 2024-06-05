class Strings {
  static const List<String> welcomeMessages = [
    "Welcome to our Kanban app!",
    'Add Board',
    'Drag and Drop',
  ];

  static const List<String> descriptionMessages = [
    'Our app helps you manage your projects with ease. Use our Kanban board to stay on top of your tasks and visualize your progress.',
    'Create a board for your project. Add a title and description for your project.',
    'Drag and drop cards to move them between lists. Move cards from "To Do" to "In Progress" when you are ready to start working on them.',
  ];

  static const List<String> onBoardingData = [
    "assets/svg/doing.svg",
    "assets/svg/board2.svg",
    "assets/svg/board3.svg",
  ];

  ///local storage keys
  static const String boxNameKey = 'userBox';
  static const String isLoggedIn = 'isLoggedIn';
  static const String themeModeKey = 'themeMode';
  static const String languageKey = 'themeMode';
  static const String onboardingCompleteKey = 'onBoardingComplete';

  ///app title
  static const String homeTitle = 'Kanban Board';
  static const String menu = 'Menu';
  static const String settings = 'Settings';
  static const String darkTheme = 'Dark Mode';
  static const String lightTheme = 'Light Mode';
  static const String english = 'Switch to English';
  static const String turkish = 'Switch to Turkish';
}
