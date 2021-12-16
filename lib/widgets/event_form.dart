import 'package:flutter/material.dart';
import 'package:ivescoreminder/ui/input_decorations.dart';

class EventForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        width: double.infinity,
        // height: 300,
        decoration: _buildBoxDecoration(),
        child: Stack(
          children: [
            _EventForm(),
          ],
        ),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() => BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.80),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: Offset(0, 5),
          )
        ],
      );
}

class _EventForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Registrar Evento',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Form(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  TextFormField(
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    decoration: InputDecorations.authInputDecoration(
                        hintText: 'Licitación',
                        labelText: 'Tipo',
                        prefixIcon: Icons.list_alt),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    decoration: InputDecorations.authInputDecoration(
                        hintText: 'A12345',
                        labelText: 'Número',
                        prefixIcon: Icons.tag),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    autocorrect: false,
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    decoration: InputDecorations.authInputDecoration(
                        hintText: 'Descripción del evento',
                        labelText: 'Descripción',
                        prefixIcon: Icons.text_format),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        disabledColor: Colors.grey,
                        elevation: 0,
                        color: Color.fromRGBO(188, 32, 37, 1.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          child: Text(
                            'Cancelar',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      SizedBox(width: 10),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        disabledColor: Colors.grey,
                        elevation: 0,
                        color: Color.fromRGBO(2, 141, 66, 1.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          child: Text(
                            'Guardar',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
