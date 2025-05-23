import 'package:flutter/material.dart';
import 'package:inventario_medizin/presentation/widget/shape/action_sceens/actions.dart';

class Menuactions extends StatelessWidget {
  const Menuactions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFFF),
      width: 240,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          
          ...menuItems.map((item) {
            return Menuaction(
              icon: item.icon,
              action: item.action,
              namescreen: item.namescreen,
              index: item.index,
            );
          }),
          Divider(
            thickness: 0.30,
          ),
          Divider(
            thickness: 0.30,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text("Datos y estadisticas",style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xFF516EFA)
            ),),
          ),
    
          ...menuauxil.map((item) {
            return Menuaction(
              icon: item.icon,
              action: item.action,
              namescreen: item.namescreen,
              index: item.index,
            );
          }),

          const SizedBox(
            height: 145,
          ),
        ...menuconfig.map((item) {
            return Menuaction(
              icon: item.icon,
              action: item.action,
              namescreen: item.namescreen,
              index: item.index,
            );
          }),
          
          ],
      ),
    );
  }
}