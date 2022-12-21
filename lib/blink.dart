library blink;

import 'dart:typed_data';

class BinaryOutput {
  final BytesBuilder _builder = BytesBuilder();

  void writeUIntX(int byte, int bits) {
    while (bits > 0) {
      _builder.addByte(byte & 0xFF);
      byte >>= 8;
      bits -= 8;
    }
  }
}
