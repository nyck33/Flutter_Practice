import 'dart:html';

import 'dart:math';

import 'package:ds_immutability/src/models/product.dart';
import 'package:ds_immutability/src/services/user_service.dart';
import 'package:flutter/material.dart';
import './ui_state/ui_states.dart';
import '../services/user_service.dart';
import './ui_state/failure.dart';

//import '../models/product.dart';

class FreezedExamplePage extends StatefulWidget {
  @override
  _FreezedExamplePageState createState() => _FreezedExamplePageState();
}

class _FreezedExamplePageState extends State<FreezedExamplePage> {
  UIState _uiState;
  List<Product> _productList;
  ProductService _productService;

  @override
  void initState() {
    super.initState();
    _uiState = Initial();
    _productService = ProductService();

    _getProducts();
  }

  void _getProducts() async {
    try {
      setState(() {
        _uiState = Loading();
      });

      final products = await _productService.getProducts();

      setState(() {
        _productList = products;
        _uiState = Success();
      });
    } on Failure catch (failure) {
      setState(() {
        _uiState = Error(failure);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Freezed Immutability"),
      ),
      body: _uiState.when(
        initial: _buildProductsLoading,
        loading: _buildProductsLoading,
        success: _buildProductsSuccess,
        error: _buildProductsError,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: _getProducts,
      ),
    );
  }

  Widget _buildProductsLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildProductsError(Failure failure) {
    return Center(
      child: Text(failure.message),
    );
  }

  Widget _buildProductsSuccess() {
    return ListView.builder(
      itemCount: _productList.length,
      itemBuilder: (context, index) => _productList[index].map(
        phone: (Phone phone) => _buildPhone(phone),
        insurance: (Insurance insurance) => _buildInsurance(insurance),
      ),
    );
  }

  Widget _buildInsurance(Product insurance) {
    return ListTile(
      leading: Icon(Icons.home),
      title: Text(
        insurance.name,
      ),
      subtitle: Text(
        insurance.id,
      ),
    );
  }

  Widget _buildPhone(Product phone) {
    return ListTile(
      leading: CircleAvatar(),
      title: Text(
        phone.name,
      ),
      subtitle: Text(
        phone.id,
      ),
    );
  }
}
