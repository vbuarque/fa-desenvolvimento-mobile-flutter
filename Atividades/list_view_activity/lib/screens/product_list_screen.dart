import 'package:flutter/material.dart';
import 'package:list_view_activity/models/product.dart';
import 'package:list_view_activity/widgets/product_item.dart';

class ProductListScreen extends StatelessWidget {
  ProductListScreen({Key? key}) : super(key: key);

  final List<Product> products = [
    Product(id: '1', name: 'Maçã'),
    Product(id: '2', name: 'Banana'),
    Product(id: '3', name: 'Laranja'),
    Product(id: '4', name: 'Morango'),
    Product(id: '5', name: 'Abacaxi'),
    Product(id: '6', name: 'Pêra'),
    Product(id: '7', name: 'Uva'),
    Product(id: '8', name: 'Melancia'),
    Product(id: '9', name: 'Limão'),
    Product(id: '10', name: 'Cereja'),
    Product(id: '11', name: 'Tomate'),
    Product(id: '12', name: 'Cenoura'),
    Product(id: '13', name: 'Alface'),
    Product(id: '14', name: 'Espinafre'),
    Product(id: '15', name: 'Batata'),
    Product(id: '16', name: 'Cebola'),
    Product(id: '17', name: 'Brócolis'),
    Product(id: '18', name: 'Couve-flor'),
    Product(id: '19', name: 'Berinjela'),
    Product(id: '20', name: 'Pepino'),
    Product(id: '21', name: 'Pimentão'),
    Product(id: '22', name: 'Abóbora'),
    Product(id: '23', name: 'Batata-doce'),
    Product(id: '24', name: 'Rúcula'),
    Product(id: '25', name: 'Acelga'),
    Product(id: '26', name: 'Salsão'),
    Product(id: '27', name: 'Mandioca'),
    Product(id: '28', name: 'Abobrinha'),
    Product(id: '29', name: 'Chuchu'),
    Product(id: '30', name: 'Quiabo'),
    // Adicione mais produtos aqui
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Produtos'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (ctx, index) {
          return ProductItem(
            product: products[index],
            onTap: () {
              Navigator.pushNamed(
                context,
                '/productDetails',
                arguments: products[index],
              );
            },
          );
        },
      ),
    );
  }
}
