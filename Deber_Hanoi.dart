import 'dart:_js_helper';

void main() {
  int _counter = 0;
  // Se Formatea un movimiento a la salida.
  String say(String from, String to) => "move $from -> $to";

  //Hace un movimiento y activa de forma recursiva los siguientes movimientos, si los hay.
  hanoi(int discs, String a, String b, String c) {
    _counter++;
    // Hace un movimiento solo si hay discos.
    if (discs > 0) {
      // Anuncia este movimiento, de A a C.
      print(say(a, c));
      //   Activa el siguiente paso: de A a B.
      hanoi(discs - 1, a, c, b);
      // Activa el último paso: de B a C.
      hanoi(discs - 1, b, a, c);
    }
  }

  hanoi(13, '1', '2', '3');
  print(_counter.toString() + "pasos en total");
}
