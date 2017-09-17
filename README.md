# Wheelock's Latin for Anki

Study materials for the Latin language, mainly from the text
_Wheelock's Latin_ and in a format for import to the best-in-class
spaced repetition flashcard software, Anki.

I'll continue to add my initial imports. Maybe someday I'll publish
the deck through AnkiWeb, and this will become the readme for the deck.

### Features

* All conjugations (1,2,3,3io,4) inverted from Wheelock presentation
  for focus on reading comprehension rather than writing/speaking
  skills.  The template is, front: [conj., prin. part, Latin verb
  ending without macrons], back: [ending with macrons, person, number,
  tense, mood, voice], including distinguishment in p/n/t/m/v
  depending on macron

* All declensions (1,2,3,3istem,4,5) noun forms inverted from Wheelock
  presentation also for focus on reading comprehension. front: [decl.,
  gender, Latin noun ending without macrons], back: [ending with
  macrons, case, number], including distinguishment in c/n depending
  on macron

* Adjectives categorized (1/2, 3, 3presActPart, 3comparative) also
  inverted.  front: [decl., Latin adj or presActPart ending] back:
  [gender, case, number, (degree)], including distinguishment of
  g/c/n/(d) depending on macron

* Relatives, interrogatives, pronouns, etc., all with front: as the
  Latin word, stem, base, or ending.

* Care taken with POS collision on word forms, e.g. vīs or relative
  and interrogative, also keeping the focus on reading comprehension.

* Intensive coverage of explanatory text, including case uses for
  difficult words (subjunctive case uses, including ut and cum,
  genitive use cases). Keep the "bury" function in Anki in mind with
  these; they are generated as three separate cards, each one mapping
  one of [caseUseName, recognition, comprehension] to the other two.
  They ought to be linked as different clozes in a single note are,
  and thus buried automatically when one of the other two in the
  triplet are studied.  I may misunderstand cloze deletions but can't
  get this three-way mapping done, so simply manually bury cards when
  I've already seen this front as part of another of the triplet's back
  today.

* all chapter vocabulary (glosses excluded), including macrons and
  accents, exactly as presented in Wheelock 7th edition, in both
  reading- and writing- focused clozes, though typos are mine.
  
## Usage

### Installations

First, install the free desktop application from http://ankisrs.net.

Then, because the Latin forms are presented with
macrons and accents, in order to enable lookup of Anki cards in the
browser by the Latin forms used on the front of the cards, install this
addon:

https://ankiweb.net/shared/info/1924690148

### TSV import

TSV stands for tab-separated file.  Anki has TSV import support.  Most
files in this repo ending in .tsv or .TSV are files intended for
import to Anki and have these four fields, separated by tabs, one note per
line:

1. card text
2. source
3. chapter
4. tags

These TSV representations have my human data-entry errors, because
Anki has extensive editing, addon and import/export support, so I
clean it up in there.  Sorry!  If/when I publish on ankiweb, they'll
be more cleaned up, along with additional cards I added directly.

In particular, be careful either to leave the HTML import box
unchecked or else ensure everything is HTML compliant (which is to
make sure no &, <, nor > are in the files, unless as intended for
HTML) before import.

### The Anki card browser: the deck anti-hierarchy

The browser allows you to view cards with an extensive search language
and edit the notes' fields whence the cards are derived.  Furthermore,
the same search language allows you to create filtered decks, which is
how this deck was prepared to be used, in accordance with the manual
of the Anki software package itself, which indicates that for the sake
of mobile app performance, Anki doesn't handle large numbers of decks
well, as could eventually become the case with one deck per chapter
just for Wheelock's alone among all the other decks one may have.

Instead, sufficient functionality is provided with fields and tags to
filter the deck by whichever chapter of Wheelock's, or progressive
chapters (see below), you wish to study.

### Fields

Card text is intended for cloze-style note import.

Source is provided with constant value "Wheelock" as a separate field
despite the entire deck being from Wheelock's Latin for the sake of
"unified deck" reviewers like me, who do not separate their decks at
all.  Instead, all the subjects I'm interested in knowing are
interspersed in a single deck, and I can separate out just Wheelock by
searching upon the Source field rather than using any more than a
single unfiltered deck.  If you haven't tried one-deck reviewing, I
recommend you do, I did on the advice of an Internet blog (thank you,
random person!) and it's definitely a keener way to review cards.

Chapter is the earliest chapter in which the Latin forms on the front
of the note were introduced.

tags may have part-of-speech information and/or tags like chapter32
which indicate the note was a reading comprehension namespace
collision, wherein vocabulary memory and word form are insufficient to
uniquely interpret the form absent additional context, and yet the
collision occurs not in a single chapter, but rather due to
introduction of different interpretation for previously introduced
forms in the later chapter(s) so tagged.

### Which TSVs to import?

By studying the cards in this deck from filtered decks instead of from
the main deck created upon import of the tsv files, everything here
can be imported once (as best you can) into a single Latin deck (or
your single combined deck) and then adjusted with different, temporary
filtered decks regardless of import order of the TSVs, to focus
exclusively on small parts of this mammoth at a time.

Alternately, you could search this deck in the browser for chapters
you'd like to study first, and suspend (or deleting) all the notes
except those, unsuspending chapters worth of cards as you go.
Regardless of the path you choose to restrict notes to particular
chapters, the imperative from the Anki software package that deck
count for a user installation remain low is satisfied with
organization in a single deck, rather than hierarchical decks.

Note also that, per the Anki manual, "You can hold down
Ctrl (command on a Mac) and click in order to append the clicked
[sidebar] item to the current search with an AND condition, instead of
starting a new search."  Thus however far you are along in Wheelock's
Latin, you can start with one of the searches below and append any
tags from the sidebar with ctrl or command click, or your own search
terms from among what you've already studied.

### Progressive Chapter Filter Searches

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
