import 'package:dragonfruit/modules/bookshelf/enum/book_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'book.g.dart';

@JsonSerializable()
class Book {
  Book(this.id, this.title, this.coverUrl, this.bookType);

  final String id;
  final String title;
  final String coverUrl;
  final BookType bookType;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
