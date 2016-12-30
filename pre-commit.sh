#!/bin/sh
# link or include this in .git/hooks/pre-commit to prevent accidental inclusion of a or an prior to
# cloze deletions that give away what has been deleted

ARTICLE_REJECTION="commit rejected: replace 'a' with 'a/an' for indefinite articles introducing cloze deletions.";
A_CLOZE_PATTERN='^+.*[aA] {{';
AN_CLOZE_PATTERN='^+.*[^/][aA][nN] {{';
for cloze_pattern in "$A_CLOZE_PATTERN" "$AN_CLOZE_PATTERN"; do
    git diff --cached | grep "$cloze_pattern" && echo $ARTICLE_REJECTION && exit 1;
done

HTML_REJECTION="commit rejected: angle brackets or ampersands found.  Anki blames the user to handle edge cases with regard to import and subsequent editing of text that is not valid HTML.  Simply avoid ampersands and angle brackets (among others) to avoid confusing behavior (like failed duplicate detection at import despite subsequent duplicate detection in the browser, including identically rendered text into the text field)."
HTML_PATTERN='^+.*[<>&]'
git diff --cached | grep "$HTML_PATTERN" && echo $HTML_REJECTION && exit 1;

echo "Pre-commit succeeded."

exit 0
