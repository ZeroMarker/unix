#!/bin/sh – Execute the file using the Bourne shell, or a compatible shell, assumed to be in the /bin directory
#!/bin/bash – Execute the file using the Bash shell
#!/usr/bin/pwsh – Execute the file using PowerShell
#!/usr/bin/env python3 – Execute with a Python interpreter, using the env program search path to find it
#!/bin/false – Do nothing, but return a non-zero exit status, indicating failure. Used to prevent stand-alone execution of a script file intended for execution in a specific context, such as by the . command from sh/bash, source from csh/tcsh, or as a .profile, .cshrc, or .login file.
