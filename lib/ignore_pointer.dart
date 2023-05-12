import 'package:flutter/cupertino.dart';

//Flutter'da, IgnorePointer ve AbsorbPointer widget'ları, kullanıcı etkileşimlerine izin vermemek için
//kullanılabilirler. İkisi de aynı işlevi yerine getirir, ancak aralarında birkaç farklılık vardır.

// IgnorePointer widget'i, tüm kullanıcı etkileşimlerini pas geçer,
// ancak üzerinde bulunduğu widget'in altındaki widget'lara etkileşim izni verir.
// Yani, IgnorePointer widget'i etkin olduğunda, dokunmatik olaylar, fare tıklamaları vb.
// tüm kullanıcı etkileşimleri, IgnorePointer widget'i tarafından kaplanan widget'ın altında kalan
// diğer widget'lara iletilir.

// Öte yandan, AbsorbPointer widget'i de tüm kullanıcı etkileşimlerini pas geçer,
// ancak üzerinde bulunduğu widget'in altındaki widget'lara etkileşim izni vermez.
// Yani, AbsorbPointer widget'i etkin olduğunda, dokunmatik olaylar, fare tıklamaları vb.
//tüm kullanıcı etkileşimleri, AbsorbPointer widget'i tarafından kaplanan widget'ın altındaki
//hiçbir diğer widget'e iletilmez.

// Özetle, IgnorePointer widget'i, üzerinde bulunduğu widget'in altındaki widget'lara dokunmatik etkileşim
// izni verirken, AbsorbPointer widget'i tüm etkileşimleri absorbe eder ve hiçbir alt widget'e izin vermez.

import 'package:flutter/material.dart';

class IgnorePointerWdget extends StatefulWidget {
  const IgnorePointerWdget({super.key});

  @override
  State<IgnorePointerWdget> createState() => _IgnorPointerWdgetState();
}

class _IgnorPointerWdgetState extends State<IgnorePointerWdget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          SizedBox(
            height: 100,
            width: 200,
            child: ElevatedButton(onPressed: () {}, child: null),
          ),
          SizedBox(
            height: 200,
            width: 100,
            child: IgnorePointer(
              ignoring: true,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade100),
                onPressed: () {
                  print("button click");
                },
                child: null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
