import 'package:dio/dio.dart';

const _API_PREFIX = 'https://jsonplaceholder.typicode.com/posts';

class Server {
  Future<void> getReq() async {
    Response response;
    Dio dio = Dio();
    response = await dio.get('$_API_PREFIX/1');
    print(response.data.toString());
  }

  Future<void> postReq() async {
    Response response;
    Dio dio = Dio();
    Map<String,dynamic> data = {"id": 80, "name": "choigoyo"};
    data.putIfAbsent("userId", () => 189);
    response =
        await dio.post(_API_PREFIX, data: data);
    print(response.data.toString());
  }

  Future<void> getReqWzQuery() async {
    Response response;
    Dio dio = Dio();
    response =
    await dio.get(_API_PREFIX, queryParameters:{"userId":189,"id":80});
    print(response.data.toString());
  }
}

Server server = Server();