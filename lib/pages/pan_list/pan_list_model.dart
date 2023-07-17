import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PanListModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<PANDetailStruct> panList = [];
  void addToPanList(PANDetailStruct item) => panList.add(item);
  void removeFromPanList(PANDetailStruct item) => panList.remove(item);
  void removeAtIndexFromPanList(int index) => panList.removeAt(index);
  void updatePanListAtIndex(int index, Function(PANDetailStruct) updateFn) =>
      panList[index] = updateFn(panList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Checkbox widget.

  Map<PANDetailStruct, bool> checkboxValueMap = {};
  List<PANDetailStruct> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
