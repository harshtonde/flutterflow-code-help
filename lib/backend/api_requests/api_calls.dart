import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class KycApiCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'KYC API',
      apiUrl: 'https://ekycuat.camsonline.com/home/home',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'url': "https://mocktarget.apigee.net/echo",
        'sess_id': "979b6d30-8640-4ab3-82bd-dc03ac3b8c16",
        'ekyctype': "I",
        'plkyc_type': "INVESTOR",
        'kyc_data':
            "XbG840FUXg7F33syJCY5V+q4XEqSAR5ttSbICHlQ0DVAfsg/NaNFDWtfneYZHH+yJCt6fKD8TocxF3tnMOLdAUBQZYhtTa90os7axqSpYGTMKgDrAhIBQBA/jvybwH/wQc7XqEijZ2npztZG08+H/h83s2ok/ybv+ps5M3iAw2vNJa4hGSWJwPHRn13ht90wWXKhvYn8tTvju0lx/ipKshUgxQBI++yUGPjFB6/ulB8Y0TwUvHeMcoa/CUt9i+2umnt5LXEOr6fA2bumIyCj8exzu5YwqsZxVpPgZMkO9ryev23pGC0MyLCUI9PB/w1VzdnNhkTVLP/AE0EYeg5LYA==|VLhq7OdEfReuRS8OLeRImcNd2QfU59GxRwbgvp8xXD67q0MTqikhhE0icYW5qzPe3N4oOeWtkGNOWlzObNjfO0dqoBUIYWrYBdNc/6o8tNx/pln3vd3xMSP5e7U11iWX91tHEyHIsjVdw1j8VCbmWw==|EKm5qiwJou8UAOTwmLf2Uw67mmK/2xIdr7j7oKUu4UPUC5Cyq6QktPET6tFORGmOZgyEQgY6y5Htbps/HNovOu3lfM5NLLT8qjLNES8CFgY=",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
