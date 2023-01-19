# <a id="questions"> 🙋 Questions </a>
1. How much is the current memory capacity of a canister? 
   A : 48Gb

2. What is the issue with the following code sample?
```
actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}
```
A: let is immutable, if we want to assign new value we have to use var instead of let 

3. What is the issue with the following code sample?
```
actor {
  var message : Text = 0;

  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}
```
A: You can not assign a Nat to a Text type.

1.  False or True: we can remove the keyword **async** for the return argument of a query function since queries are faster to answer.
A: False
