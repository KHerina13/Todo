class Todo {
  String? id;
  String? title;
  String? description;
  String? date;
  bool? completed;

  Todo({
    this.id,
    this.title,
    this.description,
    this.date,
    this.completed,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'date': date,
      'completed': completed,
    };
  }

  // Create a Todo object from a map
  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      date: map['date'],
      completed: map['completed'],
    );
  }
  // Optionally, add a method to update a Todo object from a document snapshot
  factory Todo.fromDocumentSnapshot(DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data()!;
    return Todo(
      id: doc.id,
      title: data['title'],
      description: data['description'],
      date: data['date'],
      completed: data['completed'],
    );
  }
}
