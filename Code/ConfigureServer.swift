
import PerfectLib
import PerfectHTTPServer

class ConfigureServer {
    private static let routes = RoutesManager().makeURLRoutes()
    private static let server = HTTPServer.Server(name: "server", address: "192.168.1.6", port: 8282, routes: routes)
    
    static func launchServer() {
        do {
            // Launch the servers based on the configuration data.
            try HTTPServer.launch([server])
        } catch {
            fatalError("\(error)") // fatal error launching one of the servers
        }
    }
}
