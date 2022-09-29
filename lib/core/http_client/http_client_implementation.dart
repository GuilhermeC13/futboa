import 'package:futboa/core/http_client/http_client.dart';
import 'package:futboa/core/utils/keys/football_data_api_keys.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class HttpImplementation implements HttpClient {
  final client = http.Client();

  @override
  Future<Response> get(String url) async {
    var headers = {
      'X-Auth-Token': FootballDataApiKeys.apiKey,
    };

    final response = await client.get(Uri.parse(url), headers: headers);

    return Response(response.body, response.statusCode);
  }

  @override
  Future<Response> post(String url, {required Map<String, dynamic> body}) {
    // TODO: implement post
    throw UnimplementedError();
  }
}
