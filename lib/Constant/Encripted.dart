import 'package:encrypt/encrypt.dart';
import 'package:encrypt/encrypt.dart' as encrypt;

class EncryptData {
  String decryption(String encrypted) {
//  encrypted = '0bOQ7Q04V8F0v5PPAZc7QxAA30GKJYrPlBLFqZAPDJLHKePwU8M/CpI2XfsnohIWJur4BHI98TTJE7uf5ffLhFqTf+wZqTNCBaaQaqqvNY/q8C081VkWGzho7dnNOUFVhvazPURm/eFOCMUnrA+heYzAQ6PQ4Edn9dHgFNgxUa26gk2OpNY9vJ7afxYYblBUDLBsSmcPUWQfWTbv5pSWHA=='; // Replace '...' with the actual encrypted token.

    final key = Key.fromUtf8(
        "42358357407474453245745740747545"); //hardcode combination of 16 character
    final iv = IV.fromLength(32); //hardcode combination of 16 character

    final encrypter = Encrypter(AES(
      key,
      mode: AESMode.ecb,
      padding: 'PKCS7',
    ));
    Encrypted enBase64 = Encrypted.from64(encrypted);
    final decrypted = encrypter.decrypt(enBase64, iv: iv);
    print('Decrypted Token: $decrypted');

    return decrypted.toString();
  }
}
