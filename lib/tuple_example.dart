import 'package:json_annotation/json_annotation.dart';

part 'tuple_example.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class Tuple<T, S> {
  final T value1;

  final S value2;

  Tuple(this.value1, this.value2);

  factory Tuple.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
    S Function(Object? json) fromJsonS,
  ) =>
      _$TupleFromJson(json, fromJsonT, fromJsonS);

  Map<String, dynamic> toJson(
    Object Function(T value) toJsonT,
    Object Function(S value) toJsonS,
  ) =>
      _$TupleToJson(this, toJsonT, toJsonS);
}

@JsonSerializable()
class ConcreteClass {
  final Tuple<int, DateTime> tuple1;

  final Tuple<Duration, BigInt> tuple2;

  ConcreteClass(this.tuple1, this.tuple2);

  factory ConcreteClass.fromJson(Map<String, dynamic> json) => _$ConcreteClassFromJson(json);

  Map<String, dynamic> toJson() => _$ConcreteClassToJson(this);
}
