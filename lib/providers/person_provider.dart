import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/model/person.dart';

class PersonNotifier extends StateNotifier<Person> {
  PersonNotifier() : super(Person(name: "No Name", age: 0));

  void changeName(String name) => state = state.copyWith(name: name);

  void birthday() => state = state.copyWith(age: state.age + 1);
}

final personProvider = StateNotifierProvider<PersonNotifier, Person>(
  (ref) => PersonNotifier(),
);
