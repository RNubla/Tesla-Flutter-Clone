// import 'package:flutter/cupertino.dart';
// import 'package:http/http.dart';

// class CryptoClient {
//   static const String _baseURL = "api.coincap.io/v2/assets";

//   final Client _client;
//   CryptoClient(this._client);

//   Future<Response> request({@required RequestType requestType, @required String path, dynamic parameter = Nothing}) async{_
//     switch (requestType) {
//       case RequestType.GET:
//         return _client.get("$_baseURL/$path");
//       default:
//         return throw RequestTypeNotFoundException("The http request method is not found")
//     }
//   }
// }
