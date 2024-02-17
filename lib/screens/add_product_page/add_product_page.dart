import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../models/product_model.dart';
import '../../services/add_product.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/custome_app_bar.dart';
import '../../widgets/custome_button.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({Key? key}) : super(key: key);
  static String id = 'AddProductPage';

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  String? productName, desc, image, category;

  String? price;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
   // ProductModel product;

    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: buildAppBar(
            title: 'Add Product',
            bgColor: Colors.white,
            iconColor: Colors.white,
            onTap: () {}, icon: null),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                CustomTextField(
                  onChanged: (value) {
                    productName = value;
                  },
                  hintText: 'Product Name',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onChanged: (value) {
                    desc = value;
                  },
                  hintText: 'description',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  inputType: TextInputType.number,
                  onChanged: (value) {
                    price = value;
                  },
                  hintText: 'price',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onChanged: (value) {
                    image = value;
                  },
                  hintText: 'Network_image',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onChanged: (value) {
                    category = value;
                  },
                  hintText: 'category',
                ),
                const SizedBox(
                  height: 100,
                ),
                CustomButon(
                  text: 'Save',
                  onTap: () async {
                    isLoading = true;
                    setState(() {});
                    try {
                      await addProduct();
                      print('success');
                    } catch (e) {
                      print(e.toString());
                    }
                    isLoading = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<ProductModel> addProduct() async {
    var product = await AddProductService().addProduct(
        title: productName!,
        price: price!,
        desc: desc!,
        image: image!,
        category: category!);
    return product;
  }
}
