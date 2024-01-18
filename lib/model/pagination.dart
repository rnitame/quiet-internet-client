import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quick_internet_client/model/direction.dart';
import 'package:quick_internet_client/model/sort.dart';

part 'pagination.freezed.dart';

part 'pagination.g.dart';

@freezed
class Pagination with _$Pagination {
  factory Pagination({
    required int currentPage,
    int? nextPage,
    int? prevPage,
    required int perPage,
    required Sort sort,
    required Direction direction,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
