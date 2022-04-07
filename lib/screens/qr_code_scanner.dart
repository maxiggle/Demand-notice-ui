import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';

class ScanNotice extends StatefulWidget {
  const ScanNotice({
    Key key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() =>_ScanNoticeState();
}

class _ScanNoticeState extends State<ScanNotice> {
  Barcode result;
  QRViewController controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {Future.delayed(Duration(seconds: 1)).then((value) => Navigator.pop(context));
      controller.pauseCamera();
    }
    controller.resumeCamera();
  }
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5)).then((value) => Navigator.pop(context));
    super.initState();
   
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: TextButton(
            child: Icon(Icons.arrow_back_outlined, color: Color(0xff374072)),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Scan Demand Notice',
            style: TextStyle(
                color: Color(0xff374072), fontFamily: 'Avenir', fontSize: 12),
          ),
          backgroundColor: Color(0xffFFFFFF),
        ),
        body: Stack(children: [
          Column(
            children: [
              Expanded(flex: 4, child: _buildQrView(context)),
              // if (result != null)
                
              //   Text(
              //       'Barcode Type: ${describeEnum(result.format)}   Data: ${result.code}')
              // else
              //   Text('Scan a code'),
              // Container(
              //   margin: EdgeInsets.all(8),
              //   child: ElevatedButton(
              //     onPressed: () async {
              //       await controller?.pauseCamera();
              //     },
              //     child: Text('pause', style: TextStyle(fontSize: 20)),
                // ),
              // ),
              // Container(
              //   margin: EdgeInsets.all(8),
              //   child: ElevatedButton(
              //     onPressed: () async {
              //       await controller?.resumeCamera();
              //     },
              //     child: Text('resume', style: TextStyle(fontSize: 20)),
              //   ),
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: <Widget>[
              //     Container(
              //       margin: EdgeInsets.all(8),
              //       child: ElevatedButton(
              //           onPressed: () async {
              //             await controller?.toggleFlash();
              //             setState(() {});
              //           },
              //           child: FutureBuilder(
              //             future: controller?.getFlashStatus(),
              //             builder: (context, snapshot) {
              //               return Text('Flash: ${snapshot.data}');
              //             },
              //           )),
              //     ),
              //     Container(
              //       margin: EdgeInsets.all(8),
              //       child: ElevatedButton(
              //           onPressed: () async {
              //             await controller?.flipCamera();
              //             setState(() {});
              //           },
              //           child: FutureBuilder(
              //             future: controller?.getCameraInfo(),
              //             builder: (context, snapshot) {
              //               if (snapshot.data != null) {
              //                 return Text(
              //                     'Camera facing ${describeEnum(snapshot.data)}');
              //               } else {
              //                 return Text('loading');
              //               }
              //             },
              //           )),
              //     )
              //   ],
              // )
            ],
          ),
          Positioned(
              top: 20,
              child: Padding(
                padding: EdgeInsets.only(left: 72, top: 84),
                child: Container(
                    height: 41,
                    width: 222,
                    child: Text(
                      'Point your camera at the QR code to scan the Demand Notice ',
                      style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 14,
                          color: Color(0xffFFFFFF)),
                    )),
              )),
        ]),
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 311 ||
            MediaQuery.of(context).size.height < 311)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Color(0xff18935F),
          borderLength: 30,
          borderWidth: 5,
          cutOutSize: scanArea),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
     
    super.dispose();
  }
}
