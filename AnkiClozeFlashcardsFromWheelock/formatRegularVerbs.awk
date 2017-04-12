# LC_ALL=en_US.UTF-8 awk -f formatRegularVerbs.awk -F\t regularVerbEndings.tsv
{ printf("reg verb: conj/prin part/ending: %s %s %s . {{c1::%s, %s, %s, %s, %s, %s::macrons, person, number, tense, mood, and voice}}\tWheelock\t%s\t\n", $1, $2, $3, $4, $5, $6, $7, $8, $9, $10); }
