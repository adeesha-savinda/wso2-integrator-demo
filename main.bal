import ballerina/http;

type HelloResponse record {|
    string message;
|};

service / on new http:Listener(8080) {
    resource function get hello() returns HelloResponse {
        return {message: "hello"};
    }
}
