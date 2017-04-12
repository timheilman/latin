# invocation:
# LC_ALL=en_US.UTF-8 awk -F\| -f chapterImport.awk -v chapterNumber=n file.psv
# input data format:
# n|forms|gender|translation[|derivatives]
# adj|forms|translation[|derivatives]
# v|forms|translation[|derivatives]
# ablCaseUse|name|recognition|translation
# genCaseUse|name|recognition|translation
# anyOtherPartOfSpeech|forms|translation|[derivatives]|posTag

{
    if ($1 == "n") {
	processNoun();
    } else if ($1 == "adj") {
	processAdjective();
    } else if ($1 == "v") {
	processVerb();
    } else if ($1 == "ablCaseUse") {
	processCaseUse("ablative");
    } else if ($1 == "genCaseUse") {
	processCaseUse("genitive");
    } else {
	processOther();
    }
}

function processNoun() {
    emitVocabWord($2);
    emitGender($3);
    emitMeaning($4);
    emitDerivatives($5);
    emitRecordEnding("noun");
}


function processAdjective() {
    emitVocabWord($2);
    emitMeaning($3);
    emitDerivatives($4);
    emitRecordEnding("adjective");
}

function processVerb() {
    emitVocabWord($2);
    emitMeaning($3);
    emitDerivatives($4);
    emitRecordEnding("verb");
}

function processCaseUse(grammaticalCase) {
    emitCaseUseNameRevealedNote(grammaticalCase);
    emitCaseUseRecognitionRevealedNote(grammaticalCase);
    emitCaseUseTranslationRevealedNote(grammaticalCase);
}

function processOther() {
    emitVocabWord($2);
    emitPartOfSpeech($1);
    emitMeaning($3);
    emitDerivatives($4);
    emitRecordEnding($5);
}

function emitVocabWord(vocabWord) {
    printf ("{{c1::%s}} ", vocabWord)
}

function emitGender(gender) {
    printf ("has gender {{c2::%s}} and ", gender);
}

function emitPartOfSpeech(partOfSpeech) {
    printf ("is a/an {{c4::%s}} and ", partOfSpeech);
}

function emitMeaning(meaning) {
    printf ("means {{c3::%s}}", meaning);
}

function emitDerivatives(derivatives) {
    if (derivatives != "") {
	printf (" with English derivatives {{c1::%s}}", derivatives);
    }
}

function emitCaseUseNameRevealedNote(grammaticalCase) {
    printf ("%s case use: %s . {{c1::%s . %s::how to recognize . translation}} .", grammaticalCase, $2, $3, $4);
    emitRecordEnding(grammaticalCase "CaseUse");
}

function emitCaseUseRecognitionRevealedNote(grammaticalCase) {
    printf ("%s case use: {{c1::%s::%s of ___}} . %s . {{c1::%s::translation}} .", grammaticalCase, $2, grammaticalCase, $3, $4);
    emitRecordEnding(grammaticalCase "CaseUse");
}

function emitCaseUseTranslationRevealedNote(grammaticalCase) {
    printf ("%s case use: {{c1::%s . %s::%s of ___ . how to recognize}} . %s .", grammaticalCase, $2, $3, grammaticalCase, $4);
    emitRecordEnding(grammaticalCase "CaseUse");
}

function emitRecordEnding(tag) {
    printf ("\tWheelock\t%s\t%s\n", chapterNumber, tag);
}


