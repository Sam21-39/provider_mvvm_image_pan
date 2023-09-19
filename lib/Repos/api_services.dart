import 'package:http/http.dart' as http;
import 'package:provider_mvvm_image_pan/Models/error_model.dart';
import 'package:provider_mvvm_image_pan/Models/success_model.dart';
import 'package:provider_mvvm_image_pan/Models/user_card_model.dart';
import 'package:provider_mvvm_image_pan/Utils/constants.dart';

class ApiServices {
  static Future<Object> getCardDetails({
    String cardId = DEFAULT_CARD_ID,
  }) async {
    try {
      var url = Uri.parse(GET_PROFILE_BANNER_IMAGE);
      var result = await http.Client().post(url, headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $AUTH_TOKEN"
      });
      if (result.statusCode == 200) {
        return Success(code: 200, response: userCardFromJson(result.body));
      }
    } catch (e) {
      return Failure(code: 101, errorResponse: e.toString());
    }
    return Failure(code: 102, errorResponse: "Unknown Error");
  }
}
