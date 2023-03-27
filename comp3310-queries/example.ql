/**
 * @name Call to scanner inside a loop
 * @kind problem
 * @problem.severity warning
 * @id java/example/empty-block
 */

import java

from LoopStmt loop, MethodAccess call, Method method
where
    loop.getAChild*() = call.getEnclosingStmt() and
    call.getMethod() = method and
    method.hasName("nextLine") and
    method.getDeclaringType().hasQualifiedName("java.util", "Scanner")
select call, "This calls nextLine of a scanner."

