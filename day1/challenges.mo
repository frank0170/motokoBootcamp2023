import Blob "mo:base/Blob";
import Float "mo:base/Float";
import Nat "mo:base/Nat";

actor {

  var myNumber : Float = 0;

  public func moltiplication(x : Float, y : Float) : async Float {
    myNumber := x * y;
    return myNumber;
  };

  public func addFloatAndSquare() : async Float {
    myNumber := myNumber +10.3;
    myNumber := Float.sqrt(myNumber);
    return myNumber;
  };

  public func volume(x : Nat) : async Nat {
    Nat.pow(x, 3);
  };

  public func hours_to_minutes(n : Nat) : async Nat {
    Nat.mul(n, 60);
  };

  stable var counter : Nat = 0;
  
  public func set_counter(n : Nat) : async Nat {
    counter := n;
    counter;
  };

  public query func get_counter() : async Nat {
    counter;
  };

  public func test_divide(n : Nat, m : Nat) : async Bool {
    if (n > m or n == m and m != 0) true else false;
  };

  public func is_even(n : Nat) : async Bool {
    // if remainder is 0 n is even
    if (Nat.rem(n, 2) == 0) true else false;
  };

};
