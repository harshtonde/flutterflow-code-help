import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _currencyOutput = '';
  String get currencyOutput => _currencyOutput;
  set currencyOutput(String _value) {
    _currencyOutput = _value;
  }

  DateTime? _calenderSelected;
  DateTime? get calenderSelected => _calenderSelected;
  set calenderSelected(DateTime? _value) {
    _calenderSelected = _value;
  }

  List<dynamic> _panJsonList = [
    jsonDecode(
        '{\"primaryPan\":\"VUGPR8049L\",\"name\":\"Akshay Singh Rana\"}'),
    jsonDecode(
        '{\"primaryPan\":\"BUHPL1234D\",\"name\":\"Akshay Singh Rana\"}'),
    jsonDecode(
        '{\"primaryPan\":\"CSBPM7775D\",\"name\":\"Akshay Singh Rana\"}'),
    jsonDecode('{\"primaryPan\":\"ABCPA1234C\",\"name\":\"Akshay Singh Rana\"}')
  ];
  List<dynamic> get panJsonList => _panJsonList;
  set panJsonList(List<dynamic> _value) {
    _panJsonList = _value;
  }

  void addToPanJsonList(dynamic _value) {
    _panJsonList.add(_value);
  }

  void removeFromPanJsonList(dynamic _value) {
    _panJsonList.remove(_value);
  }

  void removeAtIndexFromPanJsonList(int _index) {
    _panJsonList.removeAt(_index);
  }

  void updatePanJsonListAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _panJsonList[_index] = updateFn(_panJsonList[_index]);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
