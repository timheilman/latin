# invocation:
# LC_ALL=en_US.UTF-8 awk -F\| -f formatChapter.awk -v chapterNumber=n file.psv
# input data format:
# n|forms|gender|translation[|derivatives]
# adj|forms|translation[|derivatives]
# v|forms|translation[|derivatives]
# caseUse|grammarExplained|name|recognition|translation
# anyOtherPartOfSpeech|forms|translation|[derivatives]|posTag

{
    CATEGORY=$1
    if (CATEGORY == "n") {
	FORMS=$2
	GENDER=$3
	TRANSLATION=$4
	DERIVATIVES=$5
	processNoun();
    } else if (CATEGORY == "adj") {
	FORMS=$2
	TRANSLATION=$3
	DERIVATIVES=$4
	processAdjective();
    } else if (CATEGORY == "v") {
	FORMS=$2
	TRANSLATION=$3
	DERIVATIVES=$4
	processVerb();
    } else if (CATEGORY == "caseUse") {
	GRAMMAR_EXPLAINED=$2
	CASE_USE_NAME=$3
	RECOGNITION=$4
	TRANSLATION=$5
	processCaseUse();
    } else {
	FORMS=$2
	TRANSLATION=$3
	DERIVATIVES=$4
	POS_TAG=$5
	processOther();
    }
}

function processNoun() {
    emitVocabWord(FORMS);
    emitGender(GENDER);
    emitMeaning(TRANSLATION);
    emitDerivatives(DERIVATIVES);
    emitRecordEnding("noun");
}


function processAdjective() {
    emitVocabWord(FORMS);
    emitMeaning(TRANSLATION);
    emitDerivatives(DERIVATIVES);
    emitRecordEnding("adjective");
}

function processVerb() {
    emitVocabWord(FORMS);
    emitMeaning(TRANSLATION);
    emitDerivatives(DERIVATIVES);
    emitRecordEnding("verb");
}

function processCaseUse() {
    emitCaseUseNameRevealedNote();
    emitCaseUseRecognitionRevealedNote();
    emitCaseUseTranslationRevealedNote();
}

function processOther() {
    emitVocabWord(FORMS);
    emitPartOfSpeech(CATEGORY);
    emitMeaning(TRANSLATION);
    emitDerivatives(DERIVATIVES);
    emitRecordEnding(POS_TAG);
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

function emitCaseUseNameRevealedNote() {
    printf ("%s case use: %s . {{c1::%s . %s::how to recognize . translation}} .", GRAMMAR_EXPLAINED, CASE_USE_NAME, RECOGNITION, TRANSLATION);
    emitRecordEnding("CaseUse");
}

function emitCaseUseRecognitionRevealedNote() {
    printf ("%s case use: {{c1::%s::%s of ___}} . %s . {{c1::%s::translation}} .", GRAMMAR_EXPLAINED, CASE_USE_NAME, GRAMMAR_EXPLAINED, RECOGNITION, TRANSLATION);
    emitRecordEnding("CaseUse");
}

function emitCaseUseTranslationRevealedNote() {
    printf ("%s case use: {{c1::%s . %s::%s of ___ . how to recognize}} . %s .", GRAMMAR_EXPLAINED, CASE_USE_NAME, RECOGNITION, GRAMMAR_EXPLAINED, TRANSLATION);
    emitRecordEnding("CaseUse");
}

function emitRecordEnding(tag) {
    printf ("\tWheelock\t%s\t%s\n", chapterNumber, tag);
}


