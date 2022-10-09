import 'package:flutter/material.dart';

class ProductCards extends StatelessWidget {
  const ProductCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 20, bottom: 30),
          width: double.infinity,
          height: 400,
          decoration: _CardsBorders(),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              // Imagen del producto
              _BackgroundImage(),
              // Detalles del producto
              _ProductsDetails(),

              // Precio del producto
              const Positioned(top: 0, right: 0, child: _PrinceProducts()),
              // ignore: todo
              // TODO mostrar de manera condicional
              //Precio no disponible
              const Positioned(top: 0, left: 0, child: _NotAvailable()),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _CardsBorders() => BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(blurRadius: 0, color: Colors.white70, offset: Offset(0, 0)),
        ],
      );
}

class _NotAvailable extends StatelessWidget {
  const _NotAvailable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 70,
      decoration: BoxDecoration(
          color: Colors.amber.shade400,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), bottomRight: Radius.circular(20))),
      child: const FittedBox(
        fit: BoxFit.contain,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'No disponible',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class _PrinceProducts extends StatelessWidget {
  const _PrinceProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: 100,
        height: 70,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(66, 135, 245, 1),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomLeft: Radius.circular(25)),
        ),
        child: const FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              '\$10323.99',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ));
  }
}

class _ProductsDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: double.infinity,
        height: 70,
        decoration: _BuildBoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Playstation 5',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              'Id del producto',
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration _BuildBoxDecoration() => const BoxDecoration(
      color: Color.fromRGBO(66, 135, 245, 1),
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(25), topLeft: Radius.circular(25)));
}

class _BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        width: double.infinity,
        height: 400,
        child: const FadeInImage(
          placeholder: AssetImage('assets/circular_progress_indicator.gif'),
          image: NetworkImage('https://via.placeholder.com/400x300/f6f6f6'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
