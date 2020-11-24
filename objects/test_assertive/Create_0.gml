global.assertive = new Assertive__();

global.assertive.add(test_assertive_basic_success);
global.assertive.add(test_assertive_basic_failure);

global.assertive.runAll();