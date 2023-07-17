// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> prepareWebviewContent(
  String? autoLoginUrl,
  String? redirectUrl,
  String? sessionId,
  String? kycData,
) async {
  // Add your function code here!

  return '''<!DOCTYPE html>
<html>
<body onload="submitForm()">

<form name="IpruCAMSPG" id="CAMS_ID" action="${autoLoginUrl}" method="post">
  <input type="hidden" name="url" id="url" value="${redirectUrl}">
  <input type="hidden" name="sess_id" id="sess_id" value="${sessionId}">
  <input type="hidden" name="ekyctype" id="ekyctype" value="I">
  <input type="hidden" name="plkyc_type" id="plkyc_type" value="INVESTOR">
  <input type="hidden" name="kyc_data" id="kyc_data" value="${kycData}">
</form>

<script>
  function submitForm() {
    document.forms["IpruCAMSPG"].submit();
  }
</script>

</body>
</html>
''';
}
