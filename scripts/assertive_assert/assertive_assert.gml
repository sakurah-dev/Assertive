function assert(actual, expected) {
  var result = actual == expected;
  
  if (!result) show_error("Actual value of " + string(actual) + " does not match expected value of " + string(expected), true);
}