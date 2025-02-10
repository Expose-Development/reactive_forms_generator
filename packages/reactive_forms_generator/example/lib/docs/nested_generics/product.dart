import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'product.freezed.dart';

part 'product.gform.dart';

@freezed
@Rf(output: false)
class ProductDetails<P extends Product, C extends Cart>
    with _$ProductDetails<P, C> {
  factory ProductDetails({
    @RfControl() String? description,
    @Rf(output: false) Id<P, C>? id,
  }) = _ProductDetails;

  ProductDetails._();
}

@freezed
@Rf(output: false)
@RfGroup()
class Id<P extends Product, C extends Cart> with _$Id<P, C> {
  factory Id({
    @RfControl() String? companyName,
    @RfControl() String? name,
  }) = _Id;

  Id._();
}

@freezed
class Product with _$Product {
  const factory Product({
    String? companyName,
    String? name,
  }) = _Product;

  const Product._();
}

@freezed
class Cart with _$Cart {
  const factory Cart({
    Product? product,
    String? description,
  }) = _Cart;

  const Cart._();
}
