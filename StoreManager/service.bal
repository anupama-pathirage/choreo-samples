import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "StoreManager",
	id: "StoreManager-f3e1da7a-4c9a-4689-80a9-b27c9794b487"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
