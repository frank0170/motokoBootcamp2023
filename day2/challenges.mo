import Array "mo:base/Array";
import Char "mo:base/Char";
import Nat "mo:base/Nat";
import Text "mo:base/Text";
import Iter "mo:base/Iter";

actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };

  var languages : [Text] = [
    "English",
    "German",
    "Chinese",
    "Japanese",
    "French",
  ];

  public func add_language(new_language : [Text]) : async [Text] {
    return Array.append<Text>(languages, new_language);
  };

  public query func average_array(array : [Int]) : async Int {
    var sum : Int = 0;
    for (element in array.vals()) {
      sum += element;
    };
    return sum / array.size();
  };

  public func findCharOccurrenciesInString(myLetter : Char, myString : Text) : async Int {
    var i : Int = 0;
    for (char in myString.chars()) {
      if (char == myLetter) {
        i := i +1;
      };
    };
    return i;
  };

  public func factorial(n : Nat) : async Nat {
    var res : Nat = 1;
    if (n == 0) {
      return res;
    } else {
      for (j in Iter.range(1, n)) {
        res := res * j;
      };
      return res;
    };
  };

  type Pattern = Text.Pattern;
  let pattern : Pattern = #char(' ');
  public func number_of_words(mySentence : Text) : async Nat {
    var i : Nat = 0;
    for (words in Text.split(mySentence, pattern)) {
      i := i +1;
    };
    return i;
  };

};