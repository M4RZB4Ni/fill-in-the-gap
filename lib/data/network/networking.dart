import 'dart:convert';

import 'package:fill_in_the_gap/app/messages/printers.dart';
import 'package:fill_in_the_gap/data/enumerations/enums.dart';
import 'package:http/http.dart' as http;



class RestClient {



  Future<http.Response> sendRequest(
      final String url,
      final HttpRequestType requestType, {
        final dynamic params,
        final String? customToken,
        final Map<String, String>? headers,
      }) async {
    http.Response? response;
    // realDebugPrint(_idTokenResult.token);
    Map<String, String>? requestHeader = {
      'Content-Type': 'application/json',
      'Connection': 'keep-alive',
    };
    //realDebugPrint(requestHeader.toString());

    if (headers != null) requestHeader = headers;

    switch (requestType) {
      case HttpRequestType.POST:
        realDebugPrint('body: $params');
        response = await http.post(Uri.parse(url),
            body: json.encode(params), headers: requestHeader);
        return response;

      case HttpRequestType.GET:
        response = await http.get(Uri.parse(url), headers: requestHeader);
        return response;

      case HttpRequestType.PUT:
        response = await http.put(Uri.parse(url),
            body: params, headers: requestHeader);
        return response;
      case HttpRequestType.DELETE:
        response = await http.delete(Uri.parse(url), headers: requestHeader);
        return response;

      case HttpRequestType.PATCH:
        response = await http.patch(Uri.parse(url), headers: requestHeader);
        return response;
    }
  }

/*
  Future<ApiResult> restRequestWithFile(
    final String url,
    final Map<String, dynamic>? datas, {
    final Map<String, String>? headers,
  }) async {
    Map<String, String>? requestHeader = {
      'X-Requested-With': 'XMLHttpRequest',
      // 'Authorization': appProvider.token,
      // "Content-Type": "application/json",
    };
    if (headers != null) requestHeader = headers;
    final form = FormData(datas!);
    final response = await put(
      url,
      form,
      headers: requestHeader,
      uploadProgress: (final value) {},
    );

    if (response.hasError) {
      //realDebugPrint('hasError: ${response.statusCode}');
      return const ApiResult.failure(
        error: NetworkExceptions.unexpectedError(),
      );
    } else {
      return ApiResult.success(data: response.bodyString);
    }
  }
*/

/*
  Future<ApiResult> getUploadStatus(
    final String url,
  ) async {
    final requestHeader = <String, String>{
      'X-Requested-With': 'XMLHttpRequest',
    };

    final response = await get(url, headers: requestHeader);
    realDebugPrint('${response.statusCode} $url response');

    if (response.hasError) {
      return const ApiResult.failure(
        error: NetworkExceptions.unexpectedError(),
      );
    } else {
      final Map<String, dynamic> results =
          json.decode(response.bodyString.toString());

      return ApiResult.success(data: results);
    }
  }
*/
}

