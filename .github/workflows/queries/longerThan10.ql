/**
 * @description Find functions that are longer than 10 lines
 * @kind problem
 * @id javascript/longerThan10
 * @problem.severity recommendation
 */

import javascript

from Function func
where func.getNumLines() > 10
select func, 
  "Function is " + func.getNumLines().toString() + 
  " lines long (exceeds 10-line threshold): " + 
  func.getName()
