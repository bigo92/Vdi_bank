import 'package:vdi_bank/data/model/example/example_model.dart';
import 'package:vdi_bank/data/model/response_model.dart';
import 'package:vdi_bank/data/repositories/example/example_repository.dart';
import 'package:get/get.dart';

class ExampleProvider {
  Future<ResponseModel<List<ExampleModel>>> getList (int page) async {
    Response rs = await ExampleRepository().getPaging(page);
    if(rs.statusCode == 200) {
      var body = (rs.body['results'] as List).map((e) => ExampleModel.fromMap(e)).toList();
      return Future.value(ResponseModel(data: body, desc: 'thanh cong', status: true));
    } else {
      return Future.value(ResponseModel(data: null, desc: 'co loi trong qua trinh xu ly', status: false));
    }
  }
}