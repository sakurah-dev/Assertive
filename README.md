# Assertive
Unit Testing for Game Maker Studio 2

# Installation
To install Assertive, you can use the yymps Asset Package and import into your project

# Usage
To use Assertive, you will need to place the `test_assertive` object into a room, and then you will need to adjust which tests are run and how it gets run.

By default it will run the two sample tests which you will want to replace with your own tests. Utilize the `assert` function to test values, as Assertive will catch exceptions thrown.

You may also want to consider placing the `runAll` function under a particular key or else the tests will run each time game is run (potentially what you're looking for)
