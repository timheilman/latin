# usage: LC_ALL=en_US.UTF-8 awk -F\t -f formatIrregularVerbs.awk ./file.tsv
{ printf("irregular verb: %s {{c1::%s, %s, %s, %s, %s, %s::macrons, person, number, tense, mood, and voice}}\tWheelock\t%s\t\n", $1, $2, $3, $4, $5, $6, $7, $8); }
