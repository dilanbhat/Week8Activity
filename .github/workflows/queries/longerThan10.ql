/**
 * @description Find all functions that are longer than 10 lines
 * @kind problem
 * @id javascript/longerThan10
 * @problem.severity recommendation
 */
import javascript

from Function func
where func.getNumLines() > 10
select func, "This function is longer than 10 lines."
