import 'package:flutter/material.dart';

class ProductTableApp extends StatelessWidget {
  static const String name = "CajitaScreen";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabla de Productos',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ProductTableScreen(),
    );
  }
}

class ProductTableScreen extends StatefulWidget {
  @override
  _ProductTableScreenState createState() => _ProductTableScreenState();
}

class _ProductTableScreenState extends State<ProductTableScreen> {
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
    return Scaffold(
      appBar: AppBar(title: Text('Gestión de Productos')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Encabezado
            Text(
              'Código de barra',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            // Tabla de productos
            Container(
  height: 500, // Altura total del área de la tabla
  decoration: BoxDecoration(
    border: Border.all(color: Colors.grey, width: 1.0),
  ),
  child: Stack(
    children: [
      // Líneas verticales de fondo
      _buildVerticalLines(context),
      
      // Contenido de la tabla
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Encabezado
          Table(
            border: TableBorder.symmetric(
              inside: BorderSide(color: Colors.grey, width: 1.0),
            ),
            columnWidths: _columnWidths,
            children: [
              TableRow(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
                children: [
                  _buildHeaderCell('Nombre'),
                  _buildHeaderCell('Precio'),
                  _buildHeaderCell('Cantidad'),
                  _buildHeaderCell('Importe'),
                  _buildHeaderCell('Existencia'),
                ],
              ),
            ],
          ),
          
          // Filas de datos
          ...products.map((product) => Table(
            columnWidths: _columnWidths,
            border: TableBorder.symmetric(
              inside: BorderSide(color: Colors.transparent),
            ),
            children: [
              TableRow(
                children: [
                  _buildDataCell(product['name']),
                  _buildDataCell('\$${product['price'].toStringAsFixed(2)}'),
                  _buildDataCell(product['quantity'].toString()),
                  _buildDataCell('\$${(product['price'] * product['quantity']).toStringAsFixed(2)}'),
                  _buildDataCell(product['stock'].toString()),
                ],
              ),
            ],
          )),
        ],
      ),
    ],
  ),
),
            Divider(height: 40, thickness: 1),

            // Sección inferior
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Productos en la venta actual: $currentProducts',
                  style: TextStyle(fontSize: 16),
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
                    TextButton(
                      onPressed: _changeProducts,
                      child: Text('Cambiar'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }




  // Funciones para los botones
  void _deleteTicket() {
    setState(() {
      products.clear();
      currentProducts = 0;
    });
  }

  void _showPending() {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text('Productos Pendientes'),
            content: Text('Aquí se mostrarían los productos pendientes'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Cerrar'),
              ),
            ],
          ),
    );
  }

  void _changeProducts() {
    // Lógica para cambiar productos
  }
}



Widget _buildVerticalLines(BuildContext context) {
  final totalWidth = MediaQuery.of(context).size.width;
  final columnWidths = _calculateColumnWidths();

  return Positioned.fill(
    child: Row(
      children: [
        SizedBox(width: columnWidths[0]),
        VerticalDivider(color: Colors.grey, thickness: 1, width: 1),
        SizedBox(width: columnWidths[1]),
        VerticalDivider(color: Colors.grey, thickness: 1, width: 1),
        SizedBox(width: columnWidths[2]),
        VerticalDivider(color: Colors.grey, thickness: 1, width: 1),
        SizedBox(width: columnWidths[3]),
        VerticalDivider(color: Colors.grey, thickness: 1, width: 1),
        Spacer(),
      ],
    ),
  );
}

Map<int, TableColumnWidth> get _columnWidths => {
  0: const FixedColumnWidth(150),
  1: const FixedColumnWidth(100),
  2: const FixedColumnWidth(80),
  3: const FixedColumnWidth(100),
  4: const FixedColumnWidth(80),
};

List<double> _calculateColumnWidths() {
  return [
    (_columnWidths[0] as FixedColumnWidth).value, // 150
    (_columnWidths[1] as FixedColumnWidth).value, // 100
    (_columnWidths[2] as FixedColumnWidth).value, // 80
    (_columnWidths[3] as FixedColumnWidth).value, // 100
  ];
}

Widget _buildHeaderCell(String text) => Padding(
  padding: EdgeInsets.symmetric(vertical: 12),
  child: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
);

Widget _buildDataCell(String text) =>
    Padding(padding: EdgeInsets.symmetric(vertical: 8), child: Text(text));
