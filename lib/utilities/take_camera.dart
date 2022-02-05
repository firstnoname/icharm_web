import 'package:camera/camera.dart';

// Future<CameraImage> takePicture() async {
//   final videoWidth = videoElement.videoWidth;
//   final videoHeight = videoElement.videoHeight;
//   final canvas = html.CanvasElement(
//     width: videoWidth,
//     height: videoHeight,
//   );
//   canvas.context2D
//     ..translate(videoWidth, 0)
//     ..scale(-1, 1)
//     ..drawImageScaled(videoElement, 0, 0, videoWidth, videoHeight);
//   final blob = await canvas.toBlob();
//   return CameraImage(
//     data: html.Url.createObjectUrl(blob),
//     width: videoWidth,
//     height: videoHeight,
//   );
// }
