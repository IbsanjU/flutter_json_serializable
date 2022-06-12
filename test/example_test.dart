import 'dart:convert';

import 'package:flutter_json_serializable/example.dart';
import 'package:test/test.dart';

import 'test_shared.dart';


void main() {
  test('JsonSerializable', () {
    final person = Person('Inigo', 'Montoya', DateTime(1560, 5, 5))
      ..orders = [Order(DateTime.now())..item = (Item()..count = 42)];

    final personJson = loudEncode(person);

    final person2 =
        Person.fromJson(json.decode(personJson) as Map<String, dynamic>);

    expect(person.firstName, person2.firstName);
    expect(person.lastName, person2.lastName);
    expect(person.dateOfBirth, person2.dateOfBirth);
    expect(person.orders.single.date, person2.orders.single.date);
    expect(person.orders.single.item!.count, 42);

    expect(loudEncode(person2), equals(personJson));
  });

  test('JsonLiteral', () {
    expect(glossaryData, hasLength(1));
  });
}
