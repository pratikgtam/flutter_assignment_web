import 'package:freezed_annotation/freezed_annotation.dart';

part 'trusted_by_model.freezed.dart';
part 'trusted_by_model.g.dart';

// This is the model for the trusted by section
// It will be used to store the trusted by data
@freezed
class TrustedByModel with _$TrustedByModel {
  factory TrustedByModel({
    required String websiteUrl,
    required String logo,
  }) = _TrustedByModel;

  factory TrustedByModel.fromJson(Map<String, dynamic> json) =>
      _$TrustedByModelFromJson(json);
}
