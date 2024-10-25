/**
 * @description Find all functions that are longer than 10 lines
 * @kind problem
 * @id typescript/longerThan10
 * @problem.severity recommendation
 */
import typescript

from FunctionLike func
where func.getNumLines() > 10
select func, "This function is longer than 10 lines."
