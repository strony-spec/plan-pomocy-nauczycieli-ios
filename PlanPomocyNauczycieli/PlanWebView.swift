import SwiftUI
import WebKit

struct PlanWebView: UIViewRepresentable {
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    func makeUIView(context: Context) -> WKWebView {
        let configuration = WKWebViewConfiguration()
        configuration.websiteDataStore = .default()
        configuration.defaultWebpagePreferences.allowsContentJavaScript = true

        let webView = WKWebView(frame: .zero, configuration: configuration)
        webView.navigationDelegate = context.coordinator
        webView.isOpaque = false
        webView.backgroundColor = .clear
        webView.scrollView.backgroundColor = .clear
        webView.scrollView.contentInsetAdjustmentBehavior = .automatic
        webView.allowsBackForwardNavigationGestures = false

        context.coordinator.loadPlan(in: webView)
        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        if webView.url == nil && !webView.isLoading {
            context.coordinator.loadPlan(in: webView)
        }
    }

    final class Coordinator: NSObject, WKNavigationDelegate {
        func loadPlan(in webView: WKWebView) {
            guard let fileURL = Bundle.main.url(
                forResource: "Interaktywny_plan_pomocy_nauczycieli",
                withExtension: "html"
            ) else {
                webView.loadHTMLString(Self.missingFileMessage, baseURL: nil)
                return
            }

            webView.loadFileURL(
                fileURL,
                allowingReadAccessTo: fileURL.deletingLastPathComponent()
            )
        }

        private static let missingFileMessage = """
        <!doctype html>
        <html lang="pl">
        <head>
          <meta charset="utf-8">
          <meta name="viewport" content="width=device-width, initial-scale=1">
          <style>
            body { font: 17px -apple-system, sans-serif; padding: 32px; color: #172033; }
          </style>
        </head>
        <body>
          <h1>Nie można otworzyć planu</h1>
          <p>Plik planu nie został dołączony do aplikacji.</p>
        </body>
        </html>
        """
    }
}
