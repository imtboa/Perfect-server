import PerfectHTTP

class RoutesManager {
    
    func makeURLRoutes() -> Routes {
        
        var routes = Routes(baseUri: "/v0")

//        routes.add(method: .get, uris: ["/", "index.html"], handler: indexHandler)
        routes.add(method: .get, uri: "/homeContent", handler: homeContent)
        routes.add(method: .get, uri: "/testString", handler: homeContent)
//        routes.add(method: .get, uri: "/foo/*/baz", handler: echoHandler)
//        routes.add(method: .get, uri: "/foo/bar/baz", handler: echoHandler)
//        routes.add(method: .get, uri: "/user/{id}/baz", handler: echo2Handler)
//        routes.add(method: .get, uri: "/user/{id}", handler: echo2Handler)
//        routes.add(method: .post, uri: "/user/{id}/baz", handler: echo3Handler)
//     
//        // Test this one via command line with curl:
//        // curl --data "{\"id\":123}" http://0.0.0.0:8181/raw --header "Content-Type:application/json"
//        routes.add(method: .post, uri: "/raw", handler: rawPOSTHandler)
//
//        // Trailing wildcard matches any path
//        routes.add(method: .get, uri: "**", handler: echo4Handler)
        
        // Check the console to see the logical structure of what was installed.
        print("\(routes.navigator.description)")
        return routes
    }
    
    
    func testString(request: HTTPRequest, _ response: HTTPResponse) {
        response.appendBody(string: "</body></html>{\"test\":\"test string\"}</body></html>")
        response.completed()
    }
    
    func echoHandler(request: HTTPRequest, _ response: HTTPResponse) {
        response.appendBody(string: "Echo handler: You accessed path \(request.path) with variables \(request.urlVariables)")
        response.completed()
    }
    
    func homeContent(request: HTTPRequest, response: HTTPResponse) {
        response.appendBody(string: "")
        response.completed()
    }
}
