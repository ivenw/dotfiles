#! /bin/sh
echo "#! /bin/sh\ndotnet ~/Users/ivenwinkelmann/.local/bicep-langserver/Bicep.LangServer.dll" > ~/.local/bin/bicep-langserver
chdmod 755 ~/.local/bicep-langserver

