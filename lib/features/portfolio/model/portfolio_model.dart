import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_model.freezed.dart';
part 'portfolio_model.g.dart';

// This is the model for the portfolio
// It will be used to store the portfolio data
@freezed
class PortfolioModel with _$PortfolioModel {
  factory PortfolioModel({
    required String title,
    required String imageUrl,
    required String description,
  }) = _PortfolioModel;

  factory PortfolioModel.fromJson(Map<String, dynamic> json) =>
      _$PortfolioModelFromJson(json);
}
