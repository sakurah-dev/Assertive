function Assertive__() constructor {
  __version = "0.0.1";
  __unitTests = ds_list_create();
    
  add = function(test) {
    ds_list_add(__unitTests, test);
  }
  
  run = function(test) {
    __run(test);
  }
  
  runAll = function() {
    show_debug_message("==================== ASSERTIVE START ====================");
    var successfulTests = 0;
    var totalTests = ds_list_size(__unitTests);
    for (var i = 0; i < totalTests; i++) {
      var test = __unitTests[| i];
    
      if (!script_exists(test)) continue;
      
      successfulTests += __run(test);
    }
    show_debug_message("Total tests: " + string(totalTests) + " -- Failed tests: " + string(totalTests - successfulTests));
    show_debug_message("====================  ASSERTIVE END  ====================");
  }
  
  __run = function(test) {
    var message = "";
    var isSuccess = true;
    
    try {
      message = script_get_name(test) + " has succeeded";
      test();
    }
    catch (e) {
      message = script_get_name(test) + " has FAILED" + "\n" + e.message;
      isSuccess = false;
    }
    finally {
      show_debug_message(message);
    }
    
    return isSuccess;
  }
}
