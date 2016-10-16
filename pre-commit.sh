#!/bin/sh
# link or include this in .git/hooks/pre-commit to prevent accidental inclusion of a or an prior to
# cloze deletions that give away what has been deleted

ARTICLE_REJECTION="commit rejected: replace 'a' with 'a/an' for indefinite articles introducing cloze deletions.";
A_CLOZE_PATTERN='^+.*[aA] {{';
AN_CLOZE_PATTERN='^+.*[^/][aA][nN] {{';
for cloze_pattern in "$A_CLOZE_PATTERN" "$AN_CLOZE_PATTERN"; do
    git diff --cached | grep "$cloze_pattern" && echo $ARTICLE_REJECTION && exit 1;
done
exit 0
