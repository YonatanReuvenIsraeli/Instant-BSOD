# Instant BSOD v3.0.2
Instant Blue Screen of Death in Windows. Use at your own risk.

## THIS IS FOR EDUCATIONAL PURPOSES ONLY! DO NOT USE THIS ON SOMEONE ELSE'S PC WITHOUT THEIR EXPLICIT PERMISSION! THIS WILL BLUE SCREEN OF DEATH A WINDOWS COMPUTER! CONTINUE AT YOUR OWN RISK! @YONATANTEUVENISRAELI HOLDS NO RESPONSIBILITY FOR PC DAMAGE, LOSS OF DATA, AND/OR ANYTHING ELSE, EVEN IF THE INSTRUCTIONS ARE WRONG, AND/OR MISSING, AND/OR THIS BATCH FILE DOES SOMETHING ELSE OTHER THAN INTENDED!

## Key Features:
Single-command execution (taskkill /f /im svchost.exe).
Clear observation of BSOD behavior and system response.
Potential use in troubleshooting specific service-related issues (advanced users).

**Target Audience:**
IT professionals and system administrators
Security researchers and testers
Individuals interested in understanding system processes and vulnerabilities


## Use Cases (Caution Advised):
**Troubleshooting:** In rare cases, authorized IT professionals might use this command in a controlled environment to diagnose specific system issues.  
**Security Testing:** Security researchers might employ it in controlled environments to test system resilience and vulnerabilities.

**Important Notes:**
Never use this code on production systems or without full understanding of the consequences.
Always back up important data before any experimentation.
Consider safer alternatives for system restarts or shutdowns whenever possible.
Seek professional assistance for troubleshooting complex issues.


## Notes:
This works by doing the **taskkill /f /im "svchost.exe"** command to stop system proccess "svchost.exe" which in will Blue Screen of Deaths the PC it is run on.
