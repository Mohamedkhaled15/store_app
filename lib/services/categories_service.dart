import 'package:store_api_app/helper/api.dart';
import 'package:store_api_app/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categoryName}) async {
   List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName'.trim(),);

   

    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductModel.fromJson(data[i]));
    }

    return productsList;
  }
}
