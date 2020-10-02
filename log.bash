#!/bin/bash
function log {
inf="\\(II\\)"
war="\\(WW\\)"
grep -E -h -s $war /var/log/anaconda/X.log | sed -E "s/$war/Warning: /">lab1.log
grep -E -h -s $inf /var/log/anaconda/X.log | sed -E "s/$inf/Informaion: /" >>lab1.log
echo "The log is in file lab1.bash"
}
