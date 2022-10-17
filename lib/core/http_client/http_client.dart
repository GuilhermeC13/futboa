import 'package:http/http.dart';

abstract class HttpClient {
  Future<Response> get(String url);
  Future<Response> post(String url, {required Map<String, dynamic> body});
}
