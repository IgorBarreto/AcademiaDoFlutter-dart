import 'package:dio/dio.dart';

Future<void> run() async {
  // var dio = Dio();
  // var url = 'https://viacep.com.br/ws/01001000/json/';

  // var response = await dio.get(url);
  // if (response.statusCode == 200) {
  //   var respData = response.data;
  //   print(' cep => ${respData['cep']}');
  //   print(' logradouro => ${respData['logradouro']}');
  // }

  // var comments = await dio.get('https://jsonplaceholder.typicode.com/comments',
  //     queryParameters: {'postId': 1});
  // print(comments.data[0]);

  // var requestSavePost = <String, dynamic>{
  //   'title': 'foo',
  //   'body': 'bar',
  //   'userId': 1
  // };
  // var responseSavePost = await dio.post(
  //     'https://jsonplaceholder.typicode.com/posts',
  //     data: requestSavePost);
  // print(responseSavePost.data);
}

// *Interceptors
Future<void> dioInterceptorsTest() async {
  print('----------------- interceptors ----------------');

  var dio = Dio();
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (request) => print('onRequest'),
    onResponse: (response) => print('onResponse'),
    onError: (error) => print('onError'),
  ));

  var comments = await dio.get('https://jsonplaceholder.typicode.com/comments',
      queryParameters: {'postId': 1});
  print(comments.data[0]);
}
