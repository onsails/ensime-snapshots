set PORT_FILE=%1
set SERVER_HOST=%2
set SERVER_PORT=%3
set BOOTCLASSPATH="%~dp0\..\scala-library.jar;%~dp0\..\scala-reflect.jar;%~dp0\..\scala-compiler.jar;%~dp0\..\scala-actors.jar"
set CLASSPATH="%~dp0\..\lib\asm-3.3.1.jar;%~dp0\..\lib\asm-commons-3.3.1.jar;%~dp0\..\lib\asm-tree-3.3.1.jar;%~dp0\..\lib\asm-util-3.3.1.jar;%~dp0\..\lib\critbit-0.0.4.jar;%~dp0\..\lib\ensime_2.10-0.9.8.11-SNAPSHOT.jar;%~dp0\..\lib\hamcrest-core-1.1.jar;%~dp0\..\lib\json-simple-1.1.1.jar;%~dp0\..\lib\junit-4.10.jar;%~dp0\..\lib\lucene-core-3.5.0.jar;%~dp0\..\lib\org.eclipse.jdt.core-3.6.2.v_A76_R36x.jar;%~dp0\..\lib\org.scala-refactoring.library_2.10-0.6.2.jar;%~dp0\..\lib\scala-actors-2.10.4.jar;%~dp0\..\lib\scala-compiler.jar;%~dp0\..\lib\scala-library.jar;%~dp0\..\lib\scala-reflect.jar;%~dp0\..\lib\scalariform_2.10-0.1.4.jar;%JAVA_HOME%\lib\tools.jar"
if not defined ENSIME_JVM_ARGS (set ENSIME_JVM_ARGS=-Xms256M -Xmx1512M -XX:PermSize=128m -Xss1M -Dfile.encoding=UTF-8)
java -Dscala.usejavacp=true -Xbootclasspath/a:%BOOTCLASSPATH% -classpath %CLASSPATH% %ENSIME_JVM_ARGS% org.ensime.server.Server %PORT_FILE% %SERVER_HOST% %SERVER_PORT%
