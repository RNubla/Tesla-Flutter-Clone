// import 'dart:convert';

// import 'package:windows_app/model/crypto_currency.dart';

// class CryptoCurrencies {
//   final List<CryptoCurrency> cryptocurrencies;

//   CryptoCurrencies({this.cryptocurrencies});

//   factory CryptoCurrencies.fromRawJson(String str) =>
//       CryptoCurrencies.fromRawJson(json.decode(str));

//   factory CryptoCurrencies.fromJson(Map<String, dynamic> json) =>
//       CryptoCurrencies(
//           cryptocurrencies: List<CryptoCurrency>.from(
//               json['data'].map((x) => CryptoCurrency.fromJson(x))));
//   Map<String, dynamic> toJson() => {
//         "data": List<dynamic>.from(cryptocurrencies.map((x) => x.toJson())),
//       };
// }
