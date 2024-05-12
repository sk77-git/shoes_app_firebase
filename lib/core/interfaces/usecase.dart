
import 'package:shoe_shop_firebase/core/network/data_response.dart';

abstract class UseCase<ResponseType, RequestParams> {
  Future<DataResponse<ResponseType>> execute(RequestParams params);
}