import 'package:uuid/uuid.dart';

final UUId = Uuid().v4();

class Todo {
  Todo(this.Title, this.Description) : Id = UUId;
  final String Title;
  final String Description;
  final String Id;
}
