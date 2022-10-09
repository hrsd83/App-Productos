import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scanner_products/ui/input_decorations.dart';
import 'package:scanner_products/widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const ProductImage(),
                Positioned(
                    top: 40,
                    left: 25,
                    child: IconButton(
                      iconSize: 30,
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                      ),
                      color: Colors.white,
                    )),
                Positioned(
                    top: 40,
                    right: 25,
                    child: IconButton(
                      iconSize: 30,
                      onPressed: () {},
                      // TODO camara y galeria
                      icon: const Icon(
                        Icons.camera_alt_outlined,
                      ),
                      color: Colors.white,
                    ))
              ],
            ),
            // Formulario de producto
            const _FormProduct(),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.save_outlined, size: 35),
          onPressed: () {
            // TODO guardar producto
          }),
    );
  }
}

class _FormProduct extends StatelessWidget {
  const _FormProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        decoration: _BuildDecoration(),
        child: Form(
            child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecorations.authInputDecoration(
                  hinText: 'Nombre del producto', labelText: 'Nombre:'),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: const TextInputType.numberWithOptions(),
              decoration: InputDecorations.authInputDecoration(
                  hinText: '\$150', labelText: 'Precio:'),
            ),
            SwitchListTile(
              activeColor: Color.fromRGBO(66, 135, 245, 1),
              value: true,
              title: const Text('Disponible'),
              onChanged: (value) {
                // TODO PENDIENTE
              },
            ),
          ],
        )),
      ),
    );
  }

  BoxDecoration _BuildDecoration() => const BoxDecoration(
      // color: Colors.transparent,
      borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25), bottomLeft: Radius.circular(25)));
}
