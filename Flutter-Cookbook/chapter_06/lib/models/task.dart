import '../repositories/repository.dart';
import 'package:flutter/foundation.dart';

class Task {
  final int id;
  String? description;
  bool? complete;

  Task({
    required this.id,
    this.complete = false,
    this.description = '',
  });
  //Constructor using deserialization makes API easier to work with
  Task.fromModel(Model model)
      : id = model.id,
        description = model.data['description'],
        complete = model.data['complete'];

  Model toModel() =>
      Model(id: id, data: {'description': description, 'complete': complete});
}
