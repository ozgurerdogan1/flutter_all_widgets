
import 'dart:math';

import 'package:flutter/material.dart';

enum OrjinX { topCenter, center, bottomCenter }

enum OrjinY { centerLeft, center, centerRight }

enum OrjinZ { topLeft, topCenter, topRight, centerLeft, center, centerRight, bottomLeft, bottomCenter, bottomRight }

enum OrjinXYZ { topLeft, topCenter, topRight, centerLeft, center, centerRight, bottomLeft, bottomCenter, bottomRight }

enum ActiveRotation { rotationX, rotationY, rotationZ, rotationXYZ }

extension OrjinXExtension on OrjinX {
  Alignment get value {
    switch (this) {
      case OrjinX.topCenter:
        return Alignment.topCenter;
      case OrjinX.center:
        return Alignment.center;
      case OrjinX.bottomCenter:
        return Alignment.bottomCenter;
    }
  }
}

extension OrjinYExtension on OrjinY {
  Alignment get value {
    switch (this) {
      case OrjinY.centerLeft:
        return Alignment.centerLeft;
      case OrjinY.center:
        return Alignment.center;
      case OrjinY.centerRight:
        return Alignment.centerRight;
    }
  }
}

extension OrjinZExtension on OrjinZ {
  Alignment get value {
    switch (this) {
      case OrjinZ.topLeft:
        return Alignment.topLeft;
      case OrjinZ.topCenter:
        return Alignment.topCenter;
      case OrjinZ.topRight:
        return Alignment.topRight;
      case OrjinZ.centerLeft:
        return Alignment.centerLeft;
      case OrjinZ.center:
        return Alignment.center;
      case OrjinZ.centerRight:
        return Alignment.centerRight;
      case OrjinZ.bottomLeft:
        return Alignment.bottomLeft;
      case OrjinZ.bottomCenter:
        return Alignment.bottomCenter;
      case OrjinZ.bottomRight:
        return Alignment.bottomRight;
    }
  }
}

extension OrjinXYZExtension on OrjinXYZ {
  Alignment get value {
    switch (this) {
      case OrjinXYZ.topLeft:
        return Alignment.topLeft;
      case OrjinXYZ.topCenter:
        return Alignment.topCenter;
      case OrjinXYZ.topRight:
        return Alignment.topRight;
      case OrjinXYZ.centerLeft:
        return Alignment.centerLeft;
      case OrjinXYZ.center:
        return Alignment.center;
      case OrjinXYZ.centerRight:
        return Alignment.centerRight;
      case OrjinXYZ.bottomLeft:
        return Alignment.bottomLeft;
      case OrjinXYZ.bottomCenter:
        return Alignment.bottomCenter;
      case OrjinXYZ.bottomRight:
        return Alignment.bottomRight;
    }
  }
}

class TransformWidget extends StatefulWidget {
  const TransformWidget({super.key});

  @override
  State<TransformWidget> createState() => _TransformWidgetState();
}

class _TransformWidgetState extends State<TransformWidget> {
  int _imageWidth = 200;
  int _imageHeight = 200;

  double _valueX = 0;
  double _valueY = 0;
  double _valueZ = 0;

  OrjinX? _orjinX;
  OrjinY? _orjinY;
  OrjinZ? _orjinZ;
  OrjinXYZ? _orjinXYZ;
  ActiveRotation? _activeRotation;

  List<bool> orjinXList = [true, false, false];
  List<bool> orjinYList = [true, false, false];
  List<bool> orjinZList = [true, false, false, false, false, false, false, false, false];
  List<bool> orjinXYZList = [true, false, false, false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    double _rotationX = _valueX / 100;
    double _rotationY = _valueY / 100;
    double _rotationZ = _valueZ / 100;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _orginalPicture(),
                    const SizedBox(height: 200, width: double.infinity),
                    _rotatinXPicture(_rotationX),
                    const SizedBox(height: 200),
                    _rotationYPicture(_rotationY),
                    const SizedBox(height: 200),
                    _rotationZPicture(_rotationZ),
                    const SizedBox(height: 200),
                    _rotationXYZPicture(_rotationX, _rotationY, _rotationZ),
                    const SizedBox(height: 200),
                  ],
                ),
              ),
            ),
            _rotationXYZSlider(_rotationX, _rotationY, _rotationZ)
          ],
        ),
      ),
    );
  }

  Stack _orginalPicture() {
    return Stack(
      children: [
        Image.network("https://picsum.photos/$_imageWidth/$_imageHeight"),
        const Positioned(top: 10, left: 10, child: Text("Original")),
      ],
    );
  }

  Widget _rotatinXPicture(double _rotationX) {
    return InkWell(
      onTap: () {
        setState(() {
          _activeRotation = ActiveRotation.rotationX;
        });
      },
      child: SizedBox(
        height: _imageHeight + 20,
        width: _imageWidth + 20,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.white)),
              child: Transform(
                alignment: _orjinX?.value,
                //origin: Offset(0, 0),
                transform: Matrix4.rotationX(pi * (_activeRotation == ActiveRotation.rotationX ? _rotationX : 0)),
                child: Image.network("https://picsum.photos/200/200"),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Text("rotationX(pi * ${_rotationX.toStringAsFixed(2)})"),
            ),
            ...List.generate(3, (index) => _orjinPointX(index: index)),
          ],
        ),
      ),
    );
  }

  Widget _rotationYPicture(double _rotationY) {
    return InkWell(
      onTap: () {
        setState(() {
          _activeRotation = ActiveRotation.rotationY;
        });
      },
      child: SizedBox(
        height: _imageHeight + 20,
        width: _imageWidth + 20,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.white)),
              child: Transform(
                alignment: _orjinY?.value,
                transform: Matrix4.rotationY(pi * (_activeRotation == ActiveRotation.rotationY ? _rotationY : 0)),
                child: Image.network("https://picsum.photos/200/200"),
              ),
            ),
            Positioned(top: 10, left: 10, child: Text("rotationY(pi * ${_rotationY.toStringAsFixed(2)})")),
            ...List.generate(3, (index) => _orjinPointY(index: index))
          ],
        ),
      ),
    );
  }

  Widget _rotationZPicture(double _rotationZ) {
    return InkWell(
      onTap: () {
        setState(() {
          _activeRotation = ActiveRotation.rotationZ;
        });
      },
      child: SizedBox(
        height: _imageHeight + 20,
        width: _imageWidth + 20,
        // color: Colors.amber,
        //alignment: Alignment.center,
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.white)),
                child: Transform(
                  alignment: _orjinZ?.value,
                  transform: Matrix4.rotationZ(pi * (_activeRotation == ActiveRotation.rotationZ ? _rotationZ : 0)),
                  child: Image.network("https://picsum.photos/200/200"),
                ),
              ),
            ),
            Positioned(top: 10, left: 10, child: Text("rotationZ(pi * ${_rotationZ.toStringAsFixed(2)})")),
            ...List.generate(9, (index) => _orjinPointZ(index: index))
          ],
        ),
      ),
    );
  }

  Widget _rotationXYZPicture(double _rotationX, double _rotationY, double _rotationZ) {
    return InkWell(
      onTap: () {
        setState(() {
          _activeRotation = ActiveRotation.rotationXYZ;
        });
      },
      child: SizedBox(
        height: _imageHeight + 20,
        width: _imageWidth + 20,
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.white)),
                child: Transform(
                  transform: Matrix4.rotationX(pi * _rotationX),
                  alignment: _orjinXYZ?.value,
                  child: Transform(
                    alignment: _orjinXYZ?.value,
                    transform: Matrix4.rotationY(pi * _rotationY),
                    child: Transform(
                      alignment: _orjinXYZ?.value,
                      transform: Matrix4.rotationZ(pi * _rotationZ),
                      child: Image.network("https://picsum.photos/200/200"),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 15,
              left: 15,
              child: Text(
                "rotationX(pi * ${_rotationX.toStringAsFixed(2)}),\nrotationY(pi * ${_rotationY.toStringAsFixed(2)}),\nrotationZ(pi * ${_rotationZ.toStringAsFixed(2)})",
              ),
            ),
            ...List.generate(9, (index) => _orjinPointXYZ(index: index))
          ],
        ),
      ),
    );
  }

  Widget _orjinPointX({required int index}) {
    return Positioned(
      top: index == 0 ? 0 : null,
      bottom: index == 2 ? 0 : null,
      child: InkWell(
        onTap: () {
          _activeRotation = ActiveRotation.rotationX;
          for (var i = 0; i < orjinXList.length; i++) {
            if (i == index) {
              orjinXList[i] = true;
            } else {
              orjinXList[i] = false;
            }
          }
          switch (index) {
            case 0:
              setState(() {
                _orjinX = OrjinX.topCenter;
              });
              break;
            case 1:
              setState(() {
                _orjinX = OrjinX.center;
              });
              break;
            case 2:
              setState(() {
                _orjinX = OrjinX.bottomCenter;
              });
              break;
          }
        },
        child: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: orjinXList[index] ? Colors.green : Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _orjinPointY({required int index}) {
    return Positioned(
      left: index == 0 ? 0 : null,
      right: index == 2 ? 0 : null,
      child: InkWell(
        onTap: () {
          _activeRotation = ActiveRotation.rotationY;
          for (var i = 0; i < orjinXList.length; i++) {
            if (i == index) {
              orjinYList[i] = true;
            } else {
              orjinYList[i] = false;
            }
          }

          switch (index) {
            case 0:
              setState(() {
                _orjinY = OrjinY.centerLeft;
              });
              break;
            case 1:
              setState(() {
                _orjinY = OrjinY.center;
              });
              break;
            case 2:
              setState(() {
                _orjinY = OrjinY.centerRight;
              });
              break;
          }
        },
        child: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: orjinYList[index] ? Colors.green : Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _orjinPointZ({required int index}) {
    double? top = 0;
    double? bottom = 0;
    double? left = 0;
    double? right = 0;

    switch (index) {
      case 0:
        top = 0;
        bottom = null;
        left = 0;
        right = null;
        break;
      case 1:
        top = 0;
        bottom = null;
        left = _imageWidth / 2;
        right = null;
        break;
      case 2:
        top = 0;
        bottom = null;
        left = null;
        right = 0;
        break;
      case 3:
        top = _imageHeight / 2;
        bottom = null;
        left = 0;
        right = null;
        break;
      case 4:
        top = _imageHeight / 2;
        bottom = null;
        left = _imageWidth / 2;
        right = null;
        break;
      case 5:
        top = _imageHeight / 2;
        bottom = null;
        left = null;
        right = 0;
        break;
      case 6:
        top = null;
        bottom = 0;
        left = 0;
        right = null;
        break;
      case 7:
        top = null;
        bottom = 0;
        left = _imageWidth / 2;
        right = null;
        break;
      case 8:
        top = null;
        bottom = 0;
        left = null;
        right = 0;
        break;
    }
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: InkWell(
        onTap: () {
          print(index);
          _activeRotation = ActiveRotation.rotationZ;
          for (var i = 0; i < orjinZList.length; i++) {
            if (i == index) {
              orjinZList[i] = true;
            } else {
              orjinZList[i] = false;
            }
          }

          switch (index) {
            case 0:
              setState(() {
                _orjinZ = OrjinZ.topLeft;
              });
              break;
            case 1:
              setState(() {
                _orjinZ = OrjinZ.topCenter;
              });
              break;
            case 2:
              setState(() {
                _orjinZ = OrjinZ.topRight;
              });
              break;
            case 3:
              setState(() {
                _orjinZ = OrjinZ.centerLeft;
              });
              break;
            case 4:
              setState(() {
                _orjinZ = OrjinZ.center;
              });
              break;
            case 5:
              setState(() {
                _orjinZ = OrjinZ.centerRight;
              });
              break;
            case 6:
              setState(() {
                _orjinZ = OrjinZ.bottomLeft;
              });
              break;
            case 7:
              setState(() {
                _orjinZ = OrjinZ.bottomCenter;
              });
              break;
            case 8:
              setState(() {
                _orjinZ = OrjinZ.bottomRight;
              });
              break;
          }
        },
        child: Container(
          height: 20,
          width: 20,
          constraints: const BoxConstraints(maxHeight: 20, maxWidth: 20),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: orjinZList[index] ? Colors.green : Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _orjinPointXYZ({required int index}) {
    double? top = 0;
    double? bottom = 0;
    double? left = 0;
    double? right = 0;

    switch (index) {
      case 0:
        top = 0;
        bottom = null;
        left = 0;
        right = null;
        break;
      case 1:
        top = 0;
        bottom = null;
        left = _imageWidth / 2;
        right = null;
        break;
      case 2:
        top = 0;
        bottom = null;
        left = null;
        right = 0;
        break;
      case 3:
        top = _imageHeight / 2;
        bottom = null;
        left = 0;
        right = null;
        break;
      case 4:
        top = _imageHeight / 2;
        bottom = null;
        left = _imageWidth / 2;
        right = null;
        break;
      case 5:
        top = _imageHeight / 2;
        bottom = null;
        left = null;
        right = 0;
        break;
      case 6:
        top = null;
        bottom = 0;
        left = 0;
        right = null;
        break;
      case 7:
        top = null;
        bottom = 0;
        left = _imageWidth / 2;
        right = null;
        break;
      case 8:
        top = null;
        bottom = 0;
        left = null;
        right = 0;
        break;
    }
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: InkWell(
        onTap: () {
          _activeRotation = ActiveRotation.rotationXYZ;
          for (var i = 0; i < orjinXYZList.length; i++) {
            if (i == index) {
              orjinXYZList[i] = true;
            } else {
              orjinXYZList[i] = false;
            }
          }

          switch (index) {
            case 0:
              setState(() {
                _orjinXYZ = OrjinXYZ.topLeft;
              });
              break;
            case 1:
              setState(() {
                _orjinXYZ = OrjinXYZ.topCenter;
              });
              break;
            case 2:
              setState(() {
                _orjinXYZ = OrjinXYZ.topRight;
              });
              break;
            case 3:
              setState(() {
                _orjinXYZ = OrjinXYZ.centerLeft;
              });
              break;
            case 4:
              setState(() {
                _orjinXYZ = OrjinXYZ.center;
              });
              break;
            case 5:
              setState(() {
                _orjinXYZ = OrjinXYZ.centerRight;
              });
              break;
            case 6:
              setState(() {
                _orjinXYZ = OrjinXYZ.bottomLeft;
              });
              break;
            case 7:
              setState(() {
                _orjinXYZ = OrjinXYZ.bottomCenter;
              });
              break;
            case 8:
              setState(() {
                _orjinXYZ = OrjinXYZ.bottomRight;
              });
              break;
          }
        },
        child: Container(
          height: 20,
          width: 20,
          constraints: const BoxConstraints(maxHeight: 20, maxWidth: 20),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: orjinXYZList[index] ? Colors.green : Colors.white,
          ),
        ),
      ),
    );
  }

  Column _rotationXYZSlider(double _rotationX, double _rotationY, double _rotationZ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Visibility(
          visible: _activeRotation == ActiveRotation.rotationX || _activeRotation == ActiveRotation.rotationXYZ,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _activeRotation == ActiveRotation.rotationXYZ
                  ? Text("X,${_orjinXYZ?.name ?? OrjinXYZ.topLeft.name}")
                  : Text(
                      "X,${_activeRotation == ActiveRotation.rotationX ? (_orjinX?.name ?? OrjinX.topCenter.name) : OrjinX.topCenter.name}"),
              Slider(
                value: _valueX,
                label: _rotationX.toStringAsFixed(2),
                divisions: 200,
                max: 100,
                min: -100,
                onChanged: (value) {
                  setState(() {
                    _valueX = value;
                  });
                },
              ),
              Text(_valueX.toStringAsFixed(2)),
              IconButton(onPressed: () => setState(() => _valueX = 0), icon: const Icon(Icons.cancel_rounded))
            ],
          ),
        ),
        Visibility(
          visible: _activeRotation == ActiveRotation.rotationY || _activeRotation == ActiveRotation.rotationXYZ,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _activeRotation == ActiveRotation.rotationXYZ
                  ? Text("Y,${_orjinXYZ?.name ?? OrjinXYZ.topLeft.name}")
                  : Text(
                      "Y,${_activeRotation == ActiveRotation.rotationY ? (_orjinY?.name ?? OrjinY.centerLeft.name) : OrjinY.centerLeft.name}"),
              Slider(
                value: _valueY,
                label: _rotationY.toStringAsFixed(2),
                divisions: 200,
                max: 100,
                min: -100,
                onChanged: (value) {
                  setState(() {
                    _valueY = value;
                  });
                },
              ),
              Text(_valueY.toStringAsFixed(2)),
              IconButton(onPressed: () => setState(() => _valueY = 0), icon: const Icon(Icons.cancel_rounded))
            ],
          ),
        ),
        Visibility(
          visible: _activeRotation == ActiveRotation.rotationZ || _activeRotation == ActiveRotation.rotationXYZ,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _activeRotation == ActiveRotation.rotationXYZ
                  ? Text("Z,${_orjinXYZ?.name ?? OrjinXYZ.topLeft.name}")
                  : Text(
                      "Z,${_activeRotation == ActiveRotation.rotationZ ? (_orjinZ?.name ?? OrjinZ.topLeft.name) : OrjinZ.topLeft.name}"),
              Slider(
                value: _valueZ,
                label: _rotationZ.toStringAsFixed(2),
                divisions: 200,
                max: 100,
                min: -100,
                onChanged: (value) {
                  setState(() {
                    _valueZ = value;
                  });
                },
              ),
              Text(_valueZ.toStringAsFixed(2)),
              IconButton(onPressed: () => setState(() => _valueZ = 0), icon: const Icon(Icons.cancel_rounded))
            ],
          ),
        ),
      ],
    );
  }
}
