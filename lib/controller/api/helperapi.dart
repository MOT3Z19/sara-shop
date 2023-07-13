import 'package:hayaa_shop/utils/apiresponse.dart';

mixin ApiHelper {
  ApiResponse get errorResponse =>
      ApiResponse('Something went wrong, Try Again',  false);
}
