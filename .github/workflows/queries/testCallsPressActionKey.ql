/**
 * @description Find all test functions that call the function `pressActionKey`
 * @kind problem
 * @id javascript/testCallsPressActionKey
 * @problem.severity recommendation
 */
import javascript

from Function testFunc, CallExpression call
where
  testFunc.getName().regexpMatch(".*test.*") and
  call.getCallee().getName() = "pressActionKey" and
  testFunc = call.getEnclosingFunction()
select testFunc, "This test calls the pressActionKey function."
