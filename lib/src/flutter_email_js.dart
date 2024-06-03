import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class FlutterEmailJS{

  Future<http.Response?> sendEmail(
      {required String serviceId,
        required String templateId,
        required String userId,
        required String emailAccessToken,
        Map<String, dynamic>? templateParams,
      }) async {
    try{

      var baseUrl = 'https://api.emailjs.com/api/v1.0/email/send';
      Map<String, String> header = {"Content-Type" : "application/json",
        "Origin": "http://localhost"
      };
      var apiBody = {
        "service_id" : serviceId,
        "template_id" : templateId,
        "user_id" : userId,
        "accessToken" : emailAccessToken,
        "template_params" : templateParams
      };
      return await http.post(Uri.parse(baseUrl), headers: header, body: json.encode(apiBody));

    }catch(e){
      log("sendMail $e");
      return null;
    }
  }


}