import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    GMSServices.provideAPIKEY("AIzaSyD2Rnq62cmrBSUB-3ayHjJX2387knYvPr0")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
