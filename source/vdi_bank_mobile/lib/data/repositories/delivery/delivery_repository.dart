import 'package:vdi_bank/core/values/constains.dart';
import 'package:vdi_bank/data/repositories/base_repository.dart';
import 'package:get/get_connect/http/src/response/response.dart';

class DeliveryRepository extends BaseRepository {
  Future<Response> getPaging() async {
    var url = 'https://randomuser.me/api/?page=1&results=$kSize';
    Response rs = await get(url);
    return rs;
  }
}