import 'package:vdi_bank/core/values/constains.dart';
import 'package:vdi_bank/data/repositories/base_repository.dart';
import 'package:get/get.dart';

class ExampleRepository extends BaseRepository {
  Future<Response> getPaging(int page) async {
    var url = 'https://randomuser.me/api/?page=$page&results=$kSize';
    Response rs = await get(url);
    return rs;
  }
}