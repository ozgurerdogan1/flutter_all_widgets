import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:path_provider/path_provider.dart' as pathProvider;

class PathProviderPackage extends StatelessWidget {
  const PathProviderPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _allRunPathProviders();
            },
            child: Text("path_provider")),
      ),
    );
  }

  void _allRunPathProviders() async {
    await pathProvider.getApplicationSupportDirectory().then(
      (value) {
        //Kullanıcıya açık olmasını istemediğiniz dosyalar için
        // kullanın. Uygulamanız bu dizini kullanıcı veri dosyaları için kullanmamalıdır.
        print("----------getApplicationSupportDirectory-----------");
        print("path: ${value.path}");
        print("value.list(): ${value.list()}");

        print("value.listSync(): ${value.listSync()}");
      },
    );

    await pathProvider.getApplicationDocumentsDirectory().then(
      (value) {
        //Kullanıcı tarafından oluşturulan veya uygulamanız tarafından başka şekilde
        // yeniden oluşturulamayan verilerin depolanabileceği bir dizinin yolu.
        print("----------getApplicationDocumentsDirectory-----------");
        print("path: ${value.path}");
        print("value.list(): ${value.list()}");

        var list = value.listSync();
        for (var dir in list) {
          var fileName = dir.path.split("/").last;
          print(fileName);
        }
      },
    );

    if ((await pathProvider.getDownloadsDirectory())?.existsSync() ?? false) {
      await pathProvider.getDownloadsDirectory().then(
        (value) {
          //Bu fonksiyon, indirilen dosyaların depolanabileceği dizinin yolunu verir.
          //Döndürülen dizin, varlığı garantilenmeyen bir dizindir, bu nedenle kullanmadan
          // önce var olduğunu kontrol etmek ve gerektiğinde oluşturmak gerekebilir.
          print("----------getDownloadsDirectory-----------");
          print("path: ${value?.path}");
          print("value.list(): ${value?.list()}");

          print("value.listSync(): ${value?.listSync()}");
        },
      );
    } else {
      print("getDownloadsDirectory not found");
    }

    if (Platform.isAndroid) {
      await pathProvider.getExternalCacheDirectories().then(
        (values) {
          //Bu fonksiyon, uygulama özel önbellek verilerinin harici olarak saklanabileceği dizin yollarını döndürür.
          //sadece androidde kullanılabilir
          print("----------getExternalCacheDirectories-----------");
          print("values: ${values}");
          if (values != null) {
            print("value fr each");

            values.forEach((value) {
              print("value.path ${value.path} ");
              print("value.list(): ${value.list()}");
              print("value.listSync(): ${value.listSync()}");
            });
          }
        },
      );
    }
    if (Platform.isAndroid) {
      await pathProvider.getExternalStorageDirectories().then(
        (values) {
          //harici depolama birimlerinde (örneğin SD kart) saklanacak olan uygulama özel verilerinin
          // depolanabileceği dizin yollarını belirtir. Özellikle, Android cihazlarda farklı depolama
          //birimleri mevcut olduğundan, birden fazla depolama yolu sunulabilir.
          //sadece android
          print("----------getExternalStorageDirectories-----------");
          print("values: ${values}");
          if (values != null) {
            print("value fr each");

            values.forEach((value) {
              print("value.path ${value.path} ");
              print("value.list(): ${value.list()}");
              print("value.listSync(): ${value.listSync()}");
            });
          }
        },
      );
    }

    if (Platform.isAndroid) {
      await pathProvider.getExternalStorageDirectory().then(
        (value) {
          //Bu fonksiyon, uygulamanın üst düzey depolama alanına erişebileceği bir dizin yolu döndürür.
          // Bu depolama alanı genellikle uygulamanın kendi sandbox'ı dışında bulunan harici depolama birimleridir.
          print("----------getExternalStorageDirectory-----------");

          print("path: ${value?.path}");
          print("value.list(): ${value?.list()}");

          print("value.listSync(): ${value?.listSync()}");
        },
      );
    }

    if (Platform.isIOS || Platform.isMacOS) {
      await pathProvider.getLibraryDirectory().then(
        (value) {
          //Uygulamanın saklanabilir, yedeklenebilir ve kullanıcı tarafından görünmeyen dosyalarını
          //depolayabileceği dizinin yoludur, örneğin sqlite.db.
          // sadece ios macos için
          print("----------getLibraryDirectory-----------");

          print("path: ${value.path}");
          print("value.list(): ${value.list()}");

          // print("value.listSync(): ${value.listSync()}");

          var list = value.listSync();
          for (var dir in list) {
            var fileName = dir.path.split("/").last;
            print(fileName);
          }
        },
      );
    }

    await pathProvider.getTemporaryDirectory().then(
      (value) {
        //Cihazdaki geçici dizin yolunu döndürür. Bu dizin yedeklenmez ve indirilen
        //dosyaların önbelleğinin saklanması için uygun bir dizindir.
        print("----------getTemporaryDirectory-----------");

        print("path: ${value.path}");
        print("value.list(): ${value.list()}");

        var list = value.listSync();
        for (var dir in list) {
          var fileName = dir.path.split("/").last;
          print(fileName);
        }
      },
    );
  }
}
