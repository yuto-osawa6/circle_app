// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _UserApiClient implements UserApiClient {
  _UserApiClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'http://127.0.0.1:8080';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<GetUserApi> getFlutterUser(
    auth_token,
    device_token,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'Authorization': auth_token,
      r'Device-Token': device_token,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<GetUserApi>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/me',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetUserApi.fromJson(_result.data!);
    return value;
  }

  @override
  Future<void> updateDeviceToken(
    user_id,
    device_token,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Device-Token': device_token};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    await _dio.fetch<void>(_setStreamType<void>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/users/${user_id}/device_token',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
