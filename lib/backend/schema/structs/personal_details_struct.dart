// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PersonalDetailsStruct extends BaseStruct {
  PersonalDetailsStruct({
    String? fullName,
    String? mobileNumber,
    int? age,
  })  : _fullName = fullName,
        _mobileNumber = mobileNumber,
        _age = age;

  // "full_name" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;
  bool hasFullName() => _fullName != null;

  // "mobile_number" field.
  String? _mobileNumber;
  String get mobileNumber => _mobileNumber ?? '';
  set mobileNumber(String? val) => _mobileNumber = val;
  bool hasMobileNumber() => _mobileNumber != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  set age(int? val) => _age = val;
  void incrementAge(int amount) => _age = age + amount;
  bool hasAge() => _age != null;

  static PersonalDetailsStruct fromMap(Map<String, dynamic> data) =>
      PersonalDetailsStruct(
        fullName: data['full_name'] as String?,
        mobileNumber: data['mobile_number'] as String?,
        age: data['age'] as int?,
      );

  static PersonalDetailsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PersonalDetailsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'full_name': _fullName,
        'mobile_number': _mobileNumber,
        'age': _age,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'full_name': serializeParam(
          _fullName,
          ParamType.String,
        ),
        'mobile_number': serializeParam(
          _mobileNumber,
          ParamType.String,
        ),
        'age': serializeParam(
          _age,
          ParamType.int,
        ),
      }.withoutNulls;

  static PersonalDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      PersonalDetailsStruct(
        fullName: deserializeParam(
          data['full_name'],
          ParamType.String,
          false,
        ),
        mobileNumber: deserializeParam(
          data['mobile_number'],
          ParamType.String,
          false,
        ),
        age: deserializeParam(
          data['age'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PersonalDetailsStruct(${toMap()})';
}

PersonalDetailsStruct createPersonalDetailsStruct({
  String? fullName,
  String? mobileNumber,
  int? age,
}) =>
    PersonalDetailsStruct(
      fullName: fullName,
      mobileNumber: mobileNumber,
      age: age,
    );
