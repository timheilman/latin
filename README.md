# latin

Study materials for the Latin language, mainly from the text
_Wheelock's Latin_ and in a format for import to the best-in-class
spaced repetition flashcard software, Anki.  See http://ankisrs.net
. The format used is TSV for Cloze import.

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
browser.

The long story follows.

I maintain these notes canonically in tsv files, outside Anki and its
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
fields only) because these canonical tsv files can be processed with
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

