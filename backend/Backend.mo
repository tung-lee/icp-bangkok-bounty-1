import Array "mo:base/Array";

actor class HelloWorld() {
  stable var names : [Text] = [];

  // Add new greet function (update call)
  public func greet(name : Text) : async Text {
    names := Array.append(names, [name]);
    return "Hello, " # name # "!";
  };

  // Add query function to get all names
  public query func getSubmittedNames() : async [Text] {
    names;
  };
};
