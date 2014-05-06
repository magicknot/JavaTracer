javac -cp .;tracer.jar;lib/javassist.jar ./src/ist/meic/pa/traceinfo/*.java ./src/ist/meic/pa/*.java ./src/*.java -d ./classes
cd classes 
java -cp .;tracer.jar;../lib/javassist.jar ist.meic.pa.TraceVM Test0 > test0.out 2>&1
java -cp .;tracer.jar;../lib/javassist.jar ist.meic.pa.TraceVM Test1 > test1.out 2>&1
java -cp .;tracer.jar;../lib/javassist.jar ist.meic.pa.TraceVM Test2 > test2.out 2>&1

FC /A test0.out ../test0.expected
FC /A test1.out ../test1.expected
FC /A test2.out ../test2.expected

cd ..