class TaskModel {
  String column;
  String title;
  String description;
  bool isTimerRunning;
  Duration elapsedTime;
  DateTime? startTime;
  DateTime? completedDate;

  TaskModel({
    required this.column,
    required this.title,
    required this.description,
    this.isTimerRunning = false,
    this.elapsedTime = Duration.zero,
    this.startTime,
    this.completedDate,
  });

  // Convert TaskModel to JSON Map
  Map<String, dynamic> toJson() {
    return {
      'column': column,
      'title': title,
      'description': description,
      'isTimerRunning': isTimerRunning,
      'elapsedTime': elapsedTime.inSeconds, // Convert Duration to seconds
      'startTime': startTime?.millisecondsSinceEpoch,
      'completedDate': completedDate?.millisecondsSinceEpoch,
    };
  }

  // Create TaskModel from JSON Map
  factory TaskModel.fromJson(Map<String, dynamic> json) {
    return TaskModel(
      column: json['column'],
      title: json['title'],
      description: json['description'],
      isTimerRunning: json['isTimerRunning'],
      elapsedTime: Duration(seconds: json['elapsedTime']),
      startTime: json['startTime'] != null
          ? DateTime.fromMillisecondsSinceEpoch(json['startTime'])
          : null,
      completedDate: json['completedDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(json['completedDate'])
          : null,
    );
  }
}
