
Feature: Execute JavaScript functions


  Scenario: execute JavaScript functions with and without parameters
    * def getIntValue = function() { return 10;}
    Then print "Int value=>", getIntValue()
    * def getRandomValue = function() { return Math.floor((100) * Math.random());}
    Then print "Random value=>", getRandomValue()
    * def getArgsValue = function(arg1) { return "Hello" + arg1;}
    Then print "getArgsValue=>", getArgsValue("World")

  