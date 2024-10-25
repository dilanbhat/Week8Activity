/**
 * @description Find test functions that call pressActionKey
 * @kind problem 
 * @id javascript/tests-calling-pressactionkey
 * @problem.severity recommendation
 */

import javascript

predicate isTestFunction(Function func) {
  // Match functions with names starting with "test" or having "test" in their path
  func.getName().matches("test%") or
  func.getFile().getAbsolutePath().matches("%test%")
}

// Find the pressActionKey function
predicate isPressActionKeyCall(CallExpr call) {
  exists(Function f | 
    f.getName() = "pressActionKey" and
    call.getCallee() = f
  )
}

from Function testFunc, CallExpr call
where 
  isTestFunction(testFunc) and
  call.getContainer() = testFunc and
  isPressActionKeyCall(call)
select testFunc, 
  "Test function '" + testFunc.getName() + 
  "' calls pressActionKey"
