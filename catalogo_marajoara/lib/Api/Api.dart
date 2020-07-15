import 'package:http/http.dart' as https;
import 'dart:convert';

const baseUrlSalvaterra = 'https://catalogo-marajoara.000webhostapp.com/api/estabelecimentos.php?local=salvaterra';
const baseUrlCardapio = 'https://catalogo-marajoara.000webhostapp.com/api/cardapios.php?id=';
const baseUrlSoure = 'https://catalogo-marajoara.000webhostapp.com/api/estabelecimentos.php?local=soure';

class APISalvaterra {

  static Future getEstabelecimentos()async{
    var url = baseUrlSalvaterra;
    return await https.get(url);
  }

  static Future getEstabelecimentosSoure()async{
    var url = baseUrlSoure;
    return await https.get(url);
  }
  static Future getCardapios(id)async{
    var url = baseUrlCardapio + id.toString();
    return await https.get(url);
  }
}