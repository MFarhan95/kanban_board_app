// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to our Kanban app!`
  String get welcomeMessage1 {
    return Intl.message(
      'Welcome to our Kanban app!',
      name: 'welcomeMessage1',
      desc: '',
      args: [],
    );
  }

  /// `Add Board`
  String get welcomeMessage2 {
    return Intl.message(
      'Add Board',
      name: 'welcomeMessage2',
      desc: '',
      args: [],
    );
  }

  /// `Drag and Drop`
  String get welcomeMessage3 {
    return Intl.message(
      'Drag and Drop',
      name: 'welcomeMessage3',
      desc: '',
      args: [],
    );
  }

  /// `Our app helps you manage your projects with ease. Use our Kanban board to stay on top of your tasks and visualize your progress.`
  String get descriptionMessage1 {
    return Intl.message(
      'Our app helps you manage your projects with ease. Use our Kanban board to stay on top of your tasks and visualize your progress.',
      name: 'descriptionMessage1',
      desc: '',
      args: [],
    );
  }

  /// `Create a board for your project. Add a title and description for your project.`
  String get descriptionMessage2 {
    return Intl.message(
      'Create a board for your project. Add a title and description for your project.',
      name: 'descriptionMessage2',
      desc: '',
      args: [],
    );
  }

  /// `Drag and drop cards to move them between lists. Move cards from "To Do" to "In Progress" when you are ready to start working on them.`
  String get descriptionMessage3 {
    return Intl.message(
      'Drag and drop cards to move them between lists. Move cards from "To Do" to "In Progress" when you are ready to start working on them.',
      name: 'descriptionMessage3',
      desc: '',
      args: [],
    );
  }

  /// `userBox`
  String get boxNameKey {
    return Intl.message(
      'userBox',
      name: 'boxNameKey',
      desc: '',
      args: [],
    );
  }

  /// `isLoggedIn`
  String get isLoggedIn {
    return Intl.message(
      'isLoggedIn',
      name: 'isLoggedIn',
      desc: '',
      args: [],
    );
  }

  /// `themeMode`
  String get themeModeKey {
    return Intl.message(
      'themeMode',
      name: 'themeModeKey',
      desc: '',
      args: [],
    );
  }

  /// `onBoardingComplete`
  String get onboardingCompleteKey {
    return Intl.message(
      'onBoardingComplete',
      name: 'onboardingCompleteKey',
      desc: '',
      args: [],
    );
  }

  /// `Kanban Board`
  String get homeTitle {
    return Intl.message(
      'Kanban Board',
      name: 'homeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Menu`
  String get menu {
    return Intl.message(
      'Menu',
      name: 'menu',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get darkTheme {
    return Intl.message(
      'Dark Mode',
      name: 'darkTheme',
      desc: '',
      args: [],
    );
  }

  /// `Light Mode`
  String get lightTheme {
    return Intl.message(
      'Light Mode',
      name: 'lightTheme',
      desc: '',
      args: [],
    );
  }

  /// `Switch to English`
  String get english {
    return Intl.message(
      'Switch to English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Switch to Turkish`
  String get turkish {
    return Intl.message(
      'Switch to Turkish',
      name: 'turkish',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `To Do`
  String get todo {
    return Intl.message(
      'To Do',
      name: 'todo',
      desc: '',
      args: [],
    );
  }

  /// `In Progress`
  String get inProgress {
    return Intl.message(
      'In Progress',
      name: 'inProgress',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get title {
    return Intl.message(
      'Title',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Add Task`
  String get addTask {
    return Intl.message(
      'Add Task',
      name: 'addTask',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a title`
  String get enterTitle {
    return Intl.message(
      'Please enter a title',
      name: 'enterTitle',
      desc: '',
      args: [],
    );
  }

  /// `Column`
  String get column {
    return Intl.message(
      'Column',
      name: 'column',
      desc: '',
      args: [],
    );
  }

  /// `Complete Task`
  String get completeTask {
    return Intl.message(
      'Complete Task',
      name: 'completeTask',
      desc: '',
      args: [],
    );
  }

  /// `Start Task`
  String get startTask {
    return Intl.message(
      'Start Task',
      name: 'startTask',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Elapsed Time`
  String get elapsedTime {
    return Intl.message(
      'Elapsed Time',
      name: 'elapsedTime',
      desc: '',
      args: [],
    );
  }

  /// `edit`
  String get edit {
    return Intl.message(
      'edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `cancel`
  String get cancel {
    return Intl.message(
      'cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `comment`
  String get comment {
    return Intl.message(
      'comment',
      name: 'comment',
      desc: '',
      args: [],
    );
  }

  /// `add comment`
  String get addComment {
    return Intl.message(
      'add comment',
      name: 'addComment',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Edit Task`
  String get edit_task {
    return Intl.message(
      'Edit Task',
      name: 'edit_task',
      desc: '',
      args: [],
    );
  }

  /// `Duration`
  String get duration {
    return Intl.message(
      'Duration',
      name: 'duration',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'tr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
