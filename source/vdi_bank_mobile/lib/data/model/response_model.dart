class ResponseModel<T> {
  bool status;
  String desc;
  T data;
  ResponseModel({this.data, this.desc, this.status});

  bool ok() {
    return status;
  }
}