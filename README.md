# latin

see source data for grammar here:

https://docs.google.com/spreadsheets/d/1fTZ0nACj-buP4hBZmSY8WxlqpVmZhouqk2niEY1n4x8/edit?usp=sharing

Study materials for the Latin language, mainly from the text
_Wheelock's Latin_ and in a format for import to the best-in-class
spaced repetition flashcard software, Anki.  See http://ankisrs.net
. The format used is TSV for Cloze import.




I'm no longer considering these representations canonical, because
this addon looks sufficient to satisfy my concerns described below:
https://ankiweb.net/shared/info/291119185 .

I'll continue to add my initial imports. Maybe someday I'll publish
the deck through AnkiWeb.

------

WARNING: maintaining these notes in TSV carries with it some gotchas.

1. Use the note editor of the Anki browser ONLY by "paste"ing to the
entirety of the field.  That is, all edits to fields done within the
note editor of the Anki browser should be the wholesale replacement of
the existing text with a paste command (copied from these TSVs).

2. If you are going to use "Allow HTML in Fields" during import with
Anki as of 2.0.36, manually verify outside Anki that all text is
HTML-compliant.

Failure to do either of these things can lead to the confusing
behavior that duplicates are not detected at import despite that the
newly-added notes are immediately detected as duplicates by the
browser, yet the spaced repetition tracking data remains associated
with the original, not-updated, card(s).

The long story follows.

I maintain these notes canonically in TSV files, outside Anki and its
deck import/export and networked sharing features, because I knew,
when starting at chapter one, that Latin was a large subject that would
require a great many flashcards, but didn't know exactly what sorts of
cards I was going to wind up with, nor how I would wind up wanting to
categorize them later.  Thus I found myself craving the option to add
and remove fields and tags, and edit them, on bulk sets of notes well
after they were written, as I proceeded through the chapters, without
needing to select and update one card at a time (for each note needing
update) individually in the Note editor.

Unfortunately, this bulk-field-add,delete,update feature wasn't
available in the excellent Anki software, though two others were: TSV
import and duplicate detection based on the Text field, which governs
whether a note is added OR an existing note is updated (in its
non-Text fields) or ignored (when all fields from the candidate import
note are identical to all fields in an existing note).  These two
features enable the bulk-add, remove, and edit features (on non-Text
fields only) because these canonical TSV files can be processed with
common text-processing utilities like awk and emacs keyboard macros
(among many more), and so long as the Text field remains the same, the
updates to non-Text fields will be reflected upon reimport.  I've used
this approach successfully so far to maintain flexibility in my
(re)categorization of the Latin material as I understand more of the
structure and what sorts of categorizations will best suit my study.

However, at some point I bit the bullet and modified the Text field of
a set of cards, one by one, in the Anki browser's note editor,
executing the same edits simultaneously in the TSV records for those
same notes.  The duplicate detection of the Text field at import then
began to fail, because the edits in the Anki browser's note editor
placed non-breaking spaces at some locations where I'd struck the
space bar, whereas a normal (breaking) space was entered in the TSV.
Exporting the notes with the non-breaking spaces and checking "Allow
HTML in fields" allowed me to resume with the duplicate detection
functioning, until a stray ampersand wound up imported without HTML
escaping from a different file, for which I hadn't deselected "Allow
HTML in Fields".  Once another edit was made in the Anki browser's
note editor to the note with the ampersand, that ampersand was
HTML-escaped and duplicate detection at import again broke.

Stumbling through all these pitfalls, the lesson learned is as stated
at the WARNING above.



Progressive Chapter Filter Searches:
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
