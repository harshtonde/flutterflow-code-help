// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PANDetailStruct extends BaseStruct {
  PANDetailStruct({
    String? userName,
    String? pan,
    bool? isSelected,
  })  : _userName = userName,
        _pan = pan,
        _isSelected = isSelected;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;
  bool hasUserName() => _userName != null;

  // "pan" field.
  String? _pan;
  String get pan => _pan ?? '';
  set pan(String? val) => _pan = val;
  bool hasPan() => _pan != null;

  // "isSelected" field.
  bool? _isSelected;
  bool get isSelected => _isSelected ?? false;
  set isSelected(bool? val) => _isSelected = val;
  bool hasIsSelected() => _isSelected != null;

  static PANDetailStruct fromMap(Map<String, dynamic> data) => PANDetailStruct(
        userName: data['user_name'] as String?,
        pan: data['pan'] as String?,
        isSelected: data['isSelected'] as bool?,
      );

  static PANDetailStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PANDetailStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'user_name': _userName,
        'pan': _pan,
        'isSelected': _isSelected,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user_name': serializeParam(
          _userName,
          ParamType.String,
        ),
        'pan': serializeParam(
          _pan,
          ParamType.String,
        ),
        'isSelected': serializeParam(
          _isSelected,
          ParamType.bool,
        ),
      }.withoutNulls;

  static PANDetailStruct fromSerializableMap(Map<String, dynamic> data) =>
      PANDetailStruct(
        userName: deserializeParam(
          data['user_name'],
          ParamType.String,
          false,
        ),
        pan: deserializeParam(
          data['pan'],
          ParamType.String,
          false,
        ),
        isSelected: deserializeParam(
          data['isSelected'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'PANDetailStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PANDetailStruct &&
        userName == other.userName &&
        pan == other.pan &&
        isSelected == other.isSelected;
  }

  @override
  int get hashCode => const ListEquality().hash([userName, pan, isSelected]);
}

PANDetailStruct createPANDetailStruct({
  String? userName,
  String? pan,
  bool? isSelected,
}) =>
    PANDetailStruct(
      userName: userName,
      pan: pan,
      isSelected: isSelected,
    );
