@echo off
@rem ******************************************************************************
@rem
@rem Gradle start up script for Windows
@rem
@rem ******************************************************************************
@rem
@rem Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
@rem
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~nx0
set APP_HOME=%DIRNAME%

@rem Resolve any "." and ".." in APP_HOME
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set GRADLE_EXIT_CONSOLE=false

if not "%JAVA_HOME%" == "" goto findJavaFromJavaHome

set JAVA_EXE=java
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.
echo.
goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%

set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.
echo.
goto fail

:execute
@rem Setup the command line
set CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar

@rem Execute Gradle
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GRADLE_OPTS% -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %*

set ERRORLEVEL=%ERRORLEVEL%

@rem Return the result
if "%GRADLE_EXIT_CONSOLE%"=="true" exit %ERRORLEVEL%
exit /b %ERRORLEVEL%

:fail
pause
