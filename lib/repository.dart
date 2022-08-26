// ignore: depend_on_referenced_packages
import 'package:gql/language.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:lime/graphql_operation/queries/queries.dart' as queries;

/// 后台接口
///
/// GraphQL 请求后台接口
class Repository {
  final GraphQLClient client;

  Repository({required this.client});

  /// 发送验证码到邮箱
  ///
  Future<QueryResult> sendCode(String email) async {
    final WatchQueryOptions _options = WatchQueryOptions(
      document: parseString(queries.sendCode),
      variables: <String, String>{
        'email': email,
      },
      // pollInterval: const Duration(seconds: 4),
      fetchResults: true,
    );

    return await client.query(_options);
  }
}
