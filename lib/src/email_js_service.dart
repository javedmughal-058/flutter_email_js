import 'dart:convert';
import 'package:http/http.dart' as http;

class FlutterEmailJS {
  static Future<String> sendEmail({
    required String serviceId,
    required String templateId,
    required String userId,
    required String accessToken,
    Map<String, dynamic>? templateParams,
  }) async {
    try {
      var baseUrl = 'https://api.emailjs.com/api/v1.0/email/send';
      Map<String, String> header = {
        "Content-Type": "application/json",
        "Origin": "http://localhost"
      };
      var apiBody = {
        "service_id": serviceId,
        "template_id": templateId,
        "user_id": userId,
        "accessToken": accessToken,
        "template_params": templateParams
      };
      http.Response response = await http.post(Uri.parse(baseUrl),
          headers: header, body: json.encode(apiBody));
      if (response.statusCode == 200) {
        return "Email Successfully Send";
      } else {
        return response.body.toString();
      }
    } catch (e) {
      return "Failed! $e";
    }
  }
}
