import Float "mo:base/Float";

actor Homework {
   
  var num : Float = 0;

  public query func add(a : Float, b : Float) : async Float {
    num := a * b;
    return num;
  };

  public query func multiply () : async Float {
    num := num + 10.3;
    num := Float.sqrt(num);
    return num
  }
};
