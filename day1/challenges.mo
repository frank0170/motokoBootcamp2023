import Bool "mo:base/Bool";
import Int "mo:base/Int";
import Nat "mo:base/Nat";


actor {

    // *************************
    // *** CODING CHALLENGES ***
    // ******* DAY ONE *********

    public func multiply(m : Nat, n : Nat) : async Nat {
        m * n;
    };

    public func volume(x : Nat) : async Nat {
       Nat.pow(x,3);
    };

    public func hoursToMinutes(n : Nat) : async Nat {
        Nat.mul(n,60);
    };

    stable var myCounter : Nat = 0;
    public func set_counter(n : Nat) : async Nat {
        myCounter := n;
        myCounter;

    };

    public query func getCounter() : async Nat {
        myCounter;
    };

    public func testDivide(n : Nat, m: Nat) : async Bool {        
        if(n > m and m != 0){
            true;
        } else {
            false;
        };
    };

    public func isEven(n : Nat) : async Bool {
        let res = Nat.rem(n,2);

        if(res == 0){
            true;
        } else {
            false;
        };
    };
}