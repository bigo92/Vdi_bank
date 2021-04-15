import 'dart:convert';

import 'package:get/get.dart';

const baseUrl = 'https://randomuser.me/api/';
// const baseUrl = 'http://localhost:8080/test';

class ExampleApi extends GetConnect {
  @override
  void onInit() {

    httpClient.addRequestModifier((request) {
      print('cook data header');
      request.headers['apikey'] = '12345678';
      return request;
    });

    // Even if the server sends data from the country "Brazil",
    // it will never be displayed to users, because you remove
    // that data from the response, even before the response is delivered
    // httpClient.addResponseModifier<CasesModel>((request, response) {
    //   CasesModel model = response.body;
    //   if (model.countries.contains('Brazil')) {
    //     model.countries.remove('Brazilll');
    //   }
    // });

    // httpClient.addAuthenticator((request) async {
    //   final response = await get("http://yourapi/token");
    //   final token = response.body['token'];
    //   // Set the header
    //   request.headers['Authorization'] = "$token";
    //   return request;
    // });

    //Autenticator will be called 3 times if HttpStatus is
    //HttpStatus.unauthorized
    // httpClient.maxAuthRetries = 3;
  }

  getApi() async {
    print('begin fetch.....');
    var response = await get('$baseUrl');
    print('end fetch.....');
    //print(response.body);
    return response.body;
  }
}