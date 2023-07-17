import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

List<PANDetailStruct>? intializePanListStruct(List<dynamic>? panJsonList) {
  // update pandetail struct list with the pan json list boolean false for the struct for every item
  List<PANDetailStruct>? panDetailStructList = [];
  if (panJsonList != null) {
    for (var panJson in panJsonList) {
      PANDetailStruct panDetailStruct = PANDetailStruct();
      panDetailStruct.userName = panJson['name'];
      panDetailStruct.pan = panJson['primaryPan'];
      panDetailStruct.isSelected = false;
      panDetailStructList.add(panDetailStruct);
    }
  }
  return panDetailStructList;
}

List<PANDetailStruct>? updatePanSelectedValue(
  List<PANDetailStruct>? panDetailList,
  int? index,
) {
  // change the isSelected to true at the given index and update every other item isSelcted to false
  if (panDetailList != null) {
    for (int i = 0; i < panDetailList.length; i++) {
      if (i == index) {
        panDetailList[i].isSelected = true;
      } else {
        panDetailList[i].isSelected = false;
      }
    }
  }
  return panDetailList;
}

double currTextToCurr(String? textCurr) {
  if (textCurr != null) {
    textCurr = textCurr.split(" ")[1];
    print(textCurr);

    textCurr = textCurr.replaceAll(",", "");
    print(textCurr);
    return double.parse(textCurr);
  }
  return 0;
}
