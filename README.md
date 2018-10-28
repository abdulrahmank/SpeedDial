A Speed dial floating action button widget.

Speed dial widget is a part of material design:
https://material.io/design/components/buttons-floating-action-button.html#types-of-transitions

This package provides you a lightweight bare minimum speed dial floating action button.

Usage:

    SpeedDial(
            minimisedFABOptions:
                FloatingActionButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(MyFlutterApp.barcode),
                  ),
                  tooltip: "Add using barcode",
                  mini: true,
                  onPressed: () {
                    launchScan();
                  },
                ),
                FloatingActionButton(
                  child: Icon(Icons.create),
                  tooltip: "Add using name",
                  mini: true,
                  onPressed: () {
                    addEmptyInventoryItem();
                  },
                ),
            primaryFAB:
                FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      opened = true;
                    });
                  },
                ),
            )

