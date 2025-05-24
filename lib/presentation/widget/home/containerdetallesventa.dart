import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:inventario_medizin/presentation/widget/home/medicadetallepromo.dart';

class Containerdetallesventa extends StatelessWidget {
  Containerdetallesventa({super.key});

  get context => null;
  int currentProducts = 0;
  List<Map<String, dynamic>> products = [
    {
      'barcode': '123456789',
      'name': 'Producto Ejemplo',
      'price': 19.99,
      'quantity': 1,
      'stock': 10,
    },
  ];
  @override
  Widget build(BuildContext context) {
    final Color colorsheme = Theme.of(context).colorScheme.primary;
    return Container(
      width: 1238,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(14)),
        color: Color(0xFFFFFFFF),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 30,
              ),
              child: Row(
                
                children: [
                  Text(
                    'Código\ndel Producto: ',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  Spacer(),
                  // Sección de acciones
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colorsheme,
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 58),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                    onPressed: () => _showAddMultipleDialog(),
                    child: Text(
                      'ENTER - Agregar',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                
                children: [
                  Wrap(
                    spacing: 8.0,
                    children: [
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 81, 110, 250),
                          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9),
                          ),
                        ),
                        onPressed: () => _showAddMultipleDialog(),
                        icon: SvgPicture.asset(
                          'assets/icons/Icons_total_orde.svg',
                          width: 18,
                        ),
                        label: Text(
                          'Agregar varios',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 41, 203, 151),
                          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9),
                          ),
                        ),
                        onPressed: () => _showAddMultipleDialog(),
                        icon: SvgPicture.asset(
                          'assets/icons/icon_buscar.svg',
                          width: 18,
                        ),
                        label: Text('Buscar', style: TextStyle(color: Colors.white)),
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 246, 170, 30),
                          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9),
                          ),
                        ),
                        onPressed: () => _showAddMultipleDialog(),
                        icon: SvgPicture.asset(
                          'assets/icons/icon_verificar.svg',
                          width: 18,
                        ),
                        label: Text(
                          'Verificar',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 240, 32, 35),
                          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9),
                          ),
                        ),
                        onPressed: () => _showAddMultipleDialog(),
                        icon: SvgPicture.asset(
                          'assets/icons/icon_eliminar.svg',
                          width: 18,
                        ),
                        label: Text(
                          'Eliminar Art.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(height: 20),

            SizedBox(
              height: 400,
              child: Table(
                border: TableBorder(
                  horizontalInside: BorderSide.none,
                  verticalInside: BorderSide.none,
                ),
                columnWidths: {
                  0: FlexColumnWidth(2),
                  1: FlexColumnWidth(3),
                  2: FlexColumnWidth(2),
                  3: FlexColumnWidth(2),
                  4: FlexColumnWidth(2),
                },
                children: [
                  // Encabezado - sin bordes verticales internos
                  TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 252, 253, 253),
                    ),
                    children: [
                      _buildHeaderCell('Nombre del Producto'),
                      _buildHeaderCell('Precio de venta'),
                      _buildHeaderCell('Cantidad'),
                      _buildHeaderCell('Importe'),
                      _buildHeaderCell('Existencia'),
                    ],
                  ),
                  // Filas de datos - con bordes verticales
                  ...products
                      .map(
                        (product) => TableRow(
                          children: [
                            _buildDataCellWithBorder(
                              product['name'],
                              showLeftBorder: false,
                            ),
                            _buildDataCellWithBorder(
                              '\$${product['price'].toStringAsFixed(2)}',
                              showLeftBorder: true,
                            ),
                            _buildDataCellWithBorder(
                              product['quantity'].toString(),
                              showLeftBorder: true,
                            ),
                            _buildDataCellWithBorder(
                              '\$${(product['price'] * product['quantity']).toStringAsFixed(2)}',
                              showLeftBorder: true,
                            ),
                            _buildDataCellWithBorder(
                              product['stock'].toString(),
                              showLeftBorder: true,
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ],
              ),
            ),


            // Sección inferior
            Container(
              color: Color.fromARGB(255, 81, 110, 250),
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    
                    
                    children: [
                      Text(
                        'Productos en la venta actual:\n $currentProducts',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: _deleteTicket,
                            child: Text(
                              'Eliminar Ticket',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          SizedBox(width: 8),
                          TextButton(
                            onPressed: _showPending,
                            child: Text('Pendientes'),
                          ),
                          SizedBox(width: 8),
                          TextButton(onPressed: () {}, child: Text('Cambiar')),
                        ],
                      ),
                    ],
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        vertical: 25,
                        horizontal: 58,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                    onPressed: () => _showAddMultipleDialog(),
                    icon: SvgPicture.asset(
                      'assets/icons/icon_total_ventas.svg',
                      width: 18, color: Color.fromARGB(255, 81, 110, 250),
                    ),
                    label: Text(
                      'Procesar',
                      style: TextStyle(color: Color.fromARGB(255, 81, 110, 250),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showAddMultipleDialog() {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text('Agregar varios productos'),
            content: Text('Funcionalidad para agregar múltiples productos'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Cerrar'),
              ),
            ],
          ),
    );
  }
}

final List<String> text = [
  "Código d barra",
  "Nombre del producto",
  "Precio de venta",
  "Cantidad",
  "Importe",
  "Existencia",
];

Widget _buildOrderField(
  String order,
  String label,
  String value,
  Function(String) onChanged, {
  bool isNumeric = false,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(order, style: TextStyle(fontWeight: FontWeight.bold)),
      Text(label),
      TextField(
        controller: TextEditingController(text: value),
        keyboardType: isNumeric ? TextInputType.number : TextInputType.text,
        onChanged: onChanged,
        decoration: InputDecoration(border: OutlineInputBorder()),
      ),
      SizedBox(height: 15),
    ],
  );
}

Widget _buildInfoField(
  String label,
  String value,
  Function(String)? onChanged, {
  bool isNumeric = false,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label),
      TextField(
        controller: TextEditingController(text: value),
        keyboardType: isNumeric ? TextInputType.number : TextInputType.text,
        onChanged: onChanged,
        readOnly: onChanged == null,
        decoration: InputDecoration(border: OutlineInputBorder()),
      ),
    ],
  );
}

// Funciones para los botones de acción

void _showSearchDialog() {
  // Implementar búsqueda de productos
}

void _verifyProduct() {
  // Implementar verificación
}

void _deleteProduct() {
  // Implementar eliminación
}

void _deleteTicket() {
  // Implementar eliminación de ticket
}

void _showPending() {
  // Mostrar pendientes
}

void _changeProduct() {
  // Cambiar producto
}

class Text_tables extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final Color color;

  const Text_tables({
    super.key,
    this.text = "Nombre del producto",
    this.size = 14,
    this.fontWeight = FontWeight.w700,
    this.color = const Color.fromARGB(255, 32, 34, 36),
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
        fontFamily: 'Poppins',
      ),
    );
  }
}

Widget _buildDataCellWithBorder(String text, {bool showLeftBorder = true}) {
  return Container(
    decoration: BoxDecoration(
      border:
          showLeftBorder
              ? Border(left: BorderSide(color: Colors.grey, width: 1.0))
              : null,
    ),
    child: Padding(padding: EdgeInsets.all(8.0), child: Text(text)),
  );
}

Widget _buildHeaderCell(String text) {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
  );
}
