# Wheelock's Latin Supreme for Anki

Shared Anki flashcard deck paralleling _Wheelock's Latin_, 7th edition.

This shared deck is not of the faint of heart.  It will require
learning the Anki software sufficiently to manage a large deck using
fields and tags, and it will teach *all* the material in the textbook,
not simply the vocabulary, as the other _Wheelock's Latin_ decks
shared at the time of this deck's publication do.

## Features

* all chapter vocabulary (glosses excluded), including macrons,
  accents, POS where unclear, and English derivatives, exactly as
  presented in Wheelock 7th edition, in both reading- and writing-
  focused clozes, though typos are mine.

* Introduction (chapter 0) English flashcards on timeline of
  antiquity, pronunciation, and Latin authors.

* All conjugations (1,2,3,3io,4) and all irregular verbs inverted from
  Wheelock presentation for focus on reading comprehension rather than
  writing/speaking skills.  The template is, front: [conj.,
  prin. part, Latin verb ending without macrons] or [irreg verb form
  without macrons], back: [ending or form with macrons, person,
  number, tense, mood, voice], including distinguishment in p/n/t/m/v
  depending on macron

* All declensions (1,2,3,3istem,4,5) noun forms inverted from Wheelock
  presentation also for focus on reading comprehension. front: [decl.,
  gender, Latin noun ending without macrons], back: [ending with
  macrons, case, number], including distinguishment in c/n depending
  on macron

* Adjectives categorized (1/2, 3positive, 3comparative,
  3presActPartAttributive, 3presActPartNonAttributive) also inverted.
  front: [decl., Latin adj ending] back: [gender, case, number,
  (degree)], including distinguishment of g/c/n/(d) depending on
  macron

* Demonstratives, relatives, interrogatives, pronouns, comparatives,
  superlatives, etc., all with front: as the Latin word, stem, base,
  or ending.

* Preposition and verb object case acceptance and irregularities are
  also clozed

* English derivative series memorization cards for the
  positive/comparative/superlative forms when such forms are irregular
  in Latin, e.g. front: bad/worse/worst derivatives? back: malevolent,
  pejorative, pessimist

* Care taken with POS collision on word forms, e.g. vīs, eās, or
  relative and interrogative, also keeping the focus on reading
  comprehension.

* Intensive coverage of explanatory text, including case uses for
  difficult words (ablative use cases, subjunctive case uses,
  including ut and cum, genitive use cases, conditional use cases,
  etc.). Keep the "bury" function in Anki in mind with these; they are
  generated as three separate cards, each one mapping one of
  [caseUseName, recognition, comprehension] to the other two.  They
  ought to be linked as different clozes in a single note are, and
  thus buried automatically when one of the other two in the triplet
  are studied.  I may misunderstand cloze deletions but can't get this
  three-way mapping done, so simply manually bury the card when I've
  already seen this front today as part of the back of another of the
  triplet.

* All numbers provided from Wheelock appendix for chapter 15

* English "0/1/2/3-conditional" nomenclature grammar categories
  supplied alongside English in conditional case use notes for chapter 33

## Usage

### Installations

First, install the free desktop application from http://ankisrs.net.

Then, because the Latin forms are presented with macrons and accents,
in order to enable lookup of Anki cards in the browser by the Latin
forms used on the front of the cards, install this addon:

https://ankiweb.net/shared/info/1924690148

### The Anki card browser and conquering prerequisite cards first

The browser allows you to select sets of cards with an extensive
search language.  This deck is intended to be used in concert with
this extensive search language, as well as the Suspend function, which
excludes (groups of) cards from the review schedule until you have
learned the prerequisite cards in preceding chapters. The Anki manual
indicates that for the sake of mobile app performance, Anki doesn't
handle large numbers of decks well.  (see
https://apps.ankiweb.net/docs/manual.html#using-decks-appropriately )
This is why the cards are contained in a large, single deck, and
chapters are differentiated only with a field.

In order to review only the cards from the Introduction (chapter 0),
use the preformed search below to select the inverse set of cards
(chapters 1-40) and suspend them.  Once chapter 0 is learned, select
all the suspended cards from chapter 1 and unsuspend them.  After
chapter 1 is learned, select all the suspended cards from chapter 2
and unsuspend them, and so on.

### Fields

Field "Card text" is intended for cloze-style note import.

Field "Source" is provided with constant value "Wheelock" as a separate field
despite the entire deck being from Wheelock's Latin for the sake of
"unified deck" reviewers like me, who do not separate their decks at
all.  (See http://rs.io/anki-tips/ ).  Instead, all the subjects I'm
interested in knowing are interspersed in a single deck, and I can
separate out just Wheelock by searching upon the Source field rather
than using any more than a single unfiltered deck.

Field "Chapter" is the earliest chapter in which the Latin forms on the front
of the note were introduced.

Tags may have part-of-speech information and/or tags like chapter32
which indicate the note was a reading comprehension namespace
collision, wherein vocabulary memory and word form are insufficient to
uniquely interpret the form absent additional context, and yet the
collision occurs not in a single chapter, but rather due to
introduction of different interpretation for previously introduced
forms in the later chapter(s) so tagged.

Note also that, per the Anki manual, "You can hold down
Ctrl (command on a Mac) and click in order to append the clicked
[sidebar] item to the current search with an AND condition, instead of
starting a new search."  Thus however far you are along in Wheelock's
Latin, you can start with one of the searches below and append any
tags from the sidebar with ctrl or command click, or your own search
terms from among what you've already studied.

### What is "Correct?"

First of all, remember, it's up to *you* what to consider a
"correct"-worthy review.

This card design was to emphasize lifelong reading comprehension via
short reviews /over/ the methodic introduction of grammar as Wheelock's
itself is, hence there is a compromise to reference-forward all the
later different usages of the same earlier-introduced forms on a
single card, as soon as the earlier-introduced usage of the form is
encountered in the text.  That is, the entire textbook's answer to
"What does this form mean?" is presented on a single card's back with
a Chapter value of the earliest chapter in which that form was
introduced with any meaning at all.

Notes containing tags of the form chapter[0-9][0-9] are based upon
material from more than one chapter in Wheelock's; these tag(s) are
the later chapter(s) in which different meanings for an identical form
were introduced from those introduced in the chapter housed in the
Chapter field.  If you wish, consider the card correct during review
only when you can recall the usage of the Latin form on the front of
the card as it has already been introduced as you proceed with the
text.  As you progress to successive chapters, you can search on each
new chapter's tag and reschedule the matching cards at the beginning
of the new card queue, and thereupon consider correct during review
those cards you can recall both chapters' description of the same
form's usage, etc.

I also don't consider the English derivatives part of the memorization
task, but still have them hidden alongside the Latin forms because
they're too great a hint.

Since relative and interrogative are so similar and simultaneously so
context sensitive, I don't consider their translations to be part of
what's correct on the g/c/n cards, only on the vocab cards (and
exercises!)

### Progressive Chapter Filter Searches

#### Selection of later chapters (to suspend)

* Chapters 1-40 (If you're starting from the beginning of Wheelock's, this is the search to issue and suspend all the results of, as described above)
  * source:Wheelock (chapter:1 OR chapter:2 OR chapter:3 OR chapter:4 OR chapter:5 OR chapter:6 OR chapter:7 OR chapter:8 OR chapter:9 OR chapter:__)
* Chapters 2-40
  * source:Wheelock (chapter:2 OR chapter:3 OR chapter:4 OR chapter:5 OR chapter:6 OR chapter:7 OR chapter:8 OR chapter:9 OR chapter:__)
* Chapters 3-40
  * source:Wheelock (chapter:3 OR chapter:4 OR chapter:5 OR chapter:6 OR chapter:7 OR chapter:8 OR chapter:9 OR chapter:__)
* Chapters 4-40
  * source:Wheelock (chapter:4 OR chapter:5 OR chapter:6 OR chapter:7 OR chapter:8 OR chapter:9 OR chapter:__)
* Chapters 5-40
  * source:Wheelock (chapter:5 OR chapter:6 OR chapter:7 OR chapter:8 OR chapter:9 OR chapter:__)
* Chapters 6-40
  * source:Wheelock (chapter:6 OR chapter:7 OR chapter:8 OR chapter:9 OR chapter:__)
* Chapters 7-40
  * source:Wheelock (chapter:7 OR chapter:8 OR chapter:9 OR chapter:__)
* Chapters 8-40
  * source:Wheelock (chapter:8 OR chapter:9 OR chapter:__)
* Chapters 9-40
  * source:Wheelock (chapter:9 OR chapter:__)
* Chapters 9-40
  * source:Wheelock (chapter:9 OR chapter:__)
* Chapters 10-40
  * source:Wheelock (chapter:__)
* Chapters 11-40
  * source:Wheelock (chapter:11 OR chapter:12 OR chapter:13 OR chapter:14 OR chapter:15 OR chapter:16 OR chapter:17 OR chapter:18 OR chapter:19 OR chapter:2_ OR chapter:3_ OR chapter:40)
* Chapters 12-40
  * source:Wheelock (chapter:12 OR chapter:13 OR chapter:14 OR chapter:15 OR chapter:16 OR chapter:17 OR chapter:18 OR chapter:19 OR chapter:2_ OR chapter:3_ OR chapter:40)
* Chapters 13-40
  * source:Wheelock (chapter:13 OR chapter:14 OR chapter:15 OR chapter:16 OR chapter:17 OR chapter:18 OR chapter:19 OR chapter:2_ OR chapter:3_ OR chapter:40)
* Chapters 14-40
  * source:Wheelock (chapter:14 OR chapter:15 OR chapter:16 OR chapter:17 OR chapter:18 OR chapter:19 OR chapter:2_ OR chapter:3_ OR chapter:40)
* Chapters 15-40
  * source:Wheelock (chapter:15 OR chapter:16 OR chapter:17 OR chapter:18 OR chapter:19 OR chapter:2_ OR chapter:3_ OR chapter:40)
* Chapters 16-40
  * source:Wheelock (chapter:16 OR chapter:17 OR chapter:18 OR chapter:19 OR chapter:2_ OR chapter:3_ OR chapter:40)
* Chapters 17-40
  * source:Wheelock (chapter:17 OR chapter:18 OR chapter:19 OR chapter:2_ OR chapter:3_ OR chapter:40)
* Chapters 18-40
  * source:Wheelock (chapter:18 OR chapter:19 OR chapter:2_ OR chapter:3_ OR chapter:40)
* Chapters 19-40
  * source:Wheelock (chapter:19 OR chapter:2_ OR chapter:3_ OR chapter:40)
* Chapters 20-40
  * source:Wheelock (chapter:2_ OR chapter:3_ OR chapter:40)
* Chapters 21-40
  * source:Wheelock (chapter:21 OR chapter:22 OR chapter:23 OR chapter:24 OR chapter:25 OR chapter:26 OR chapter:27 OR chapter:28 OR chapter:29 OR chapter:3_ OR chapter:40)
* Chapters 22-40
  * source:Wheelock (chapter:22 OR chapter:23 OR chapter:24 OR chapter:25 OR chapter:26 OR chapter:27 OR chapter:28 OR chapter:29 OR chapter:3_ OR chapter:40)
* Chapters 23-40
  * source:Wheelock (chapter:23 OR chapter:24 OR chapter:25 OR chapter:26 OR chapter:27 OR chapter:28 OR chapter:29 OR chapter:3_ OR chapter:40)
* Chapters 24-40
  * source:Wheelock (chapter:24 OR chapter:25 OR chapter:26 OR chapter:27 OR chapter:28 OR chapter:29 OR chapter:3_ OR chapter:40)
* Chapters 25-40
  * source:Wheelock (chapter:25 OR chapter:26 OR chapter:27 OR chapter:28 OR chapter:29 OR chapter:3_ OR chapter:40)
* Chapters 26-40
  * source:Wheelock (chapter:26 OR chapter:27 OR chapter:28 OR chapter:29 OR chapter:3_ OR chapter:40)
* Chapters 27-40
  * source:Wheelock (chapter:27 OR chapter:28 OR chapter:29 OR chapter:3_ OR chapter:40)
* Chapters 28-40
  * source:Wheelock (chapter:28 OR chapter:29 OR chapter:3_ OR chapter:40)
* Chapters 29-40
  * source:Wheelock (chapter:29 OR chapter:3_ OR chapter:40)
* Chapters 30-40
  * source:Wheelock (chapter:3_ OR chapter:40)
* Chapters 31-40
  * source:Wheelock (chapter:31 OR chapter:32 OR chapter:33 OR chapter:34 OR chapter:35 OR chapter:36 OR chapter:37 OR chapter:38 OR chapter:39 OR chapter:40)
* Chapters 32-40
  * source:Wheelock (chapter:32 OR chapter:33 OR chapter:34 OR chapter:35 OR chapter:36 OR chapter:37 OR chapter:38 OR chapter:39 OR chapter:40)
* Chapters 33-40
  * source:Wheelock (chapter:33 OR chapter:34 OR chapter:35 OR chapter:36 OR chapter:37 OR chapter:38 OR chapter:39 OR chapter:40)
* Chapters 34-40
  * source:Wheelock (chapter:34 OR chapter:35 OR chapter:36 OR chapter:37 OR chapter:38 OR chapter:39 OR chapter:40)
* Chapters 35-40
  * source:Wheelock (chapter:35 OR chapter:36 OR chapter:37 OR chapter:38 OR chapter:39 OR chapter:40)
* Chapters 36-40
  * source:Wheelock (chapter:36 OR chapter:37 OR chapter:38 OR chapter:39 OR chapter:40)
* Chapters 37-40
  * source:Wheelock (chapter:37 OR chapter:38 OR chapter:39 OR chapter:40)
* Chapters 38-40
  * source:Wheelock (chapter:38 OR chapter:39 OR chapter:40)
* Chapters 39-40
  * source:Wheelock (chapter:39 OR chapter:40)
* Chapters 40-40
  * source:Wheelock (chapter:40)

#### selection of earlier chapters

* Chapters 0-0
  * source:Wheelock (chapter:0)
* Chapters 0-1
  * source:Wheelock (chapter:0 OR chapter:1)
* Chapters 0-2
  * source:Wheelock (chapter:0 OR chapter:1 OR chapter:2)
* Chapters 0-3
  * source:Wheelock (chapter:0 OR chapter:1 OR chapter:2 OR chapter:3)
* Chapters 0-4
  * source:Wheelock (chapter:0 OR chapter:1 OR chapter:2 OR chapter:3 OR chapter:4)
* Chapters 0-5
  * source:Wheelock (chapter:0 OR chapter:1 OR chapter:2 OR chapter:3 OR chapter:4 OR chapter:5)
* Chapters 0-6
  * source:Wheelock (chapter:0 OR chapter:1 OR chapter:2 OR chapter:3 OR chapter:4 OR chapter:5 OR chapter:6)
* Chapters 0-7
  * source:Wheelock (chapter:0 OR chapter:1 OR chapter:2 OR chapter:3 OR chapter:4 OR chapter:5 OR chapter:6 OR chapter:7)
* Chapters 0-8
  * source:Wheelock (chapter:0 OR chapter:1 OR chapter:2 OR chapter:3 OR chapter:4 OR chapter:5 OR chapter:6 OR chapter:7 OR chapter:8)
* Chapters 0-9
  * source:Wheelock (chapter:_)
* Chapters 0-10
  * source:Wheelock (chapter:_ OR chapter:10)
* Chapters 0-11
  * source:Wheelock (chapter:_ OR chapter:10 OR chapter:11)
* Chapters 0-12
  * source:Wheelock (chapter:_ OR chapter:10 OR chapter:11 OR chapter:12)
* Chapters 0-13
  * source:Wheelock (chapter:_ OR chapter:10 OR chapter:11 OR chapter:12 OR chapter:13)
* Chapters 0-14
  * source:Wheelock (chapter:_ OR chapter:10 OR chapter:11 OR chapter:12 OR chapter:13 OR chapter:14)
* Chapters 0-15
  * source:Wheelock (chapter:_ OR chapter:10 OR chapter:11 OR chapter:12 OR chapter:13 OR chapter:14 OR chapter:15)
* Chapters 0-16
  * source:Wheelock (chapter:_ OR chapter:10 OR chapter:11 OR chapter:12 OR chapter:13 OR chapter:14 OR chapter:15 OR chapter:16)
* Chapters 0-17
  * source:Wheelock (chapter:_ OR chapter:10 OR chapter:11 OR chapter:12 OR chapter:13 OR chapter:14 OR chapter:15 OR chapter:16 OR chapter:17)
* Chapters 0-18
  * source:Wheelock (chapter:_ OR chapter:10 OR chapter:11 OR chapter:12 OR chapter:13 OR chapter:14 OR chapter:15 OR chapter:16 OR chapter:17 OR chapter:18)
* Chapters 0-19
  * source:Wheelock (chapter:_ OR chapter:1_)
* Chapters 0-20
  * source:Wheelock (chapter:_ OR chapter:1_ OR chapter:20)
* Chapters 0-21
  * source:Wheelock (chapter:_ OR chapter:1_ OR chapter:20 OR chapter:21)
* Chapters 0-22
  * source:Wheelock (chapter:_ OR chapter:1_ OR chapter:20 OR chapter:21 OR chapter:22)
* Chapters 0-23
  * source:Wheelock (chapter:_ OR chapter:1_ OR chapter:20 OR chapter:21 OR chapter:22 OR chapter:23)
* Chapters 0-24
  * source:Wheelock (chapter:_ OR chapter:1_ OR chapter:20 OR chapter:21 OR chapter:22 OR chapter:23 OR chapter:24)
* Chapters 0-25
  * source:Wheelock (chapter:_ OR chapter:1_ OR chapter:20 OR chapter:21 OR chapter:22 OR chapter:23 OR chapter:24 OR chapter:25)
* Chapters 0-26
  * source:Wheelock (chapter:_ OR chapter:1_ OR chapter:20 OR chapter:21 OR chapter:22 OR chapter:23 OR chapter:24 OR chapter:25 OR chapter:26)
* Chapters 0-27
  * source:Wheelock (chapter:_ OR chapter:1_ OR chapter:20 OR chapter:21 OR chapter:22 OR chapter:23 OR chapter:24 OR chapter:25 OR chapter:26 OR chapter:27)
* Chapters 0-28
  * source:Wheelock (chapter:_ OR chapter:1_ OR chapter:20 OR chapter:21 OR chapter:22 OR chapter:23 OR chapter:24 OR chapter:25 OR chapter:26 OR chapter:27 OR chapter:28)
* Chapters 0-29
  * source:Wheelock (chapter:_ OR chapter:1_ OR chapter:2_)
* Chapters 0-30
  * source:Wheelock (chapter:_ OR chapter:1_ OR chapter:2_ OR chapter:30)
* Chapters 0-31
  * source:Wheelock (chapter:_ OR chapter:1_ OR chapter:2_ OR chapter:30 OR chapter:31)
* Chapters 0-32
  * source:Wheelock (chapter:_ OR chapter:1_ OR chapter:2_ OR chapter:30 OR chapter:31 OR chapter:32)
* Chapters 0-33
  * source:Wheelock (chapter:_ OR chapter:1_ OR chapter:2_ OR chapter:30 OR chapter:31 OR chapter:32 OR chapter:33)
* Chapters 0-34
  * source:Wheelock (chapter:_ OR chapter:1_ OR chapter:2_ OR chapter:30 OR chapter:31 OR chapter:32 OR chapter:33 OR chapter:34)
* Chapters 0-35
  * source:Wheelock (chapter:_ OR chapter:1_ OR chapter:2_ OR chapter:30 OR chapter:31 OR chapter:32 OR chapter:33 OR chapter:34 OR chapter:35)
* Chapters 0-36
  * source:Wheelock (chapter:_ OR chapter:1_ OR chapter:2_ OR chapter:30 OR chapter:31 OR chapter:32 OR chapter:33 OR chapter:34 OR chapter:35 OR chapter:36)
* Chapters 0-37
  * source:Wheelock (chapter:_ OR chapter:1_ OR chapter:2_ OR chapter:30 OR chapter:31 OR chapter:32 OR chapter:33 OR chapter:34 OR chapter:35 OR chapter:36 OR chapter:37)
* Chapters 0-38
  * source:Wheelock (chapter:_ OR chapter:1_ OR chapter:2_ OR chapter:30 OR chapter:31 OR chapter:32 OR chapter:33 OR chapter:34 OR chapter:35 OR chapter:36 OR chapter:37 OR chapter:38)
* Chapters 0-39
  * source:Wheelock (chapter:_ OR chapter:1_ OR chapter:2_ OR chapter:3_)
* Chapters 0-40
  * source:Wheelock (chapter:_ OR chapter:1_ OR chapter:2_ OR chapter:3_ OR chapter:40)

## source data for grammar flashcards reading-comprehension focus construction

https://docs.google.com/spreadsheets/d/1fTZ0nACj-buP4hBZmSY8WxlqpVmZhouqk2niEY1n4x8/edit?usp=sharing
