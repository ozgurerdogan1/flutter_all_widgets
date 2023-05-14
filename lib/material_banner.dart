import 'package:flutter/material.dart';

class MaterialBannerWidget extends StatelessWidget {
  const MaterialBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showMaterialBanner(
                    MaterialBanner(
                      forceActionsBelow: false,
                      leading: const Icon(Icons.notifications_active_outlined),
                      content: const Text("Subscribe"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                            },
                            child: const Text("Dismiss")),
                      ],
                    ),
                  );
                },
                child: Text("show banner"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
