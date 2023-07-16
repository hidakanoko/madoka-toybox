import 'package:flutter_test/flutter_test.dart';
import 'package:mtoybox/modules/domain/model/article/article_description.dart';

main() {
  test('ArticleDescription length lower than 100', (() {
    // given
    var val =
        '12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890';

    // when
    var description = ArticleDescription(val);

    // then
    expect(description.value,
        '12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  }));

  test('ArticleDescription length over 200', (() {
    // given
    var value =
        '123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901';

    // when, then
    expect(() => ArticleDescription(value), throwsArgumentError);
  }));
}
