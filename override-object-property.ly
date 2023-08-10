\version "2.25.7"
\include "library.ily"
\include "stylesheet.ily"

\markup { File: \bold \typewriter override-object-property.ly }
\markup \vspace #1

\markup \justify { Understanding the difference between \bold \typewriter
"\override" and \bold \typewriter "\overrideProperty" is famously difficult.
But it seems like the distinction may be at least a little easier to understand
than is usually thought. I'm not completely certain about what I'm concluding
here, but let's see. }

\markup \vspace #1

\markup \justify {

It seems that the confusions may come from a subtle misunderstanding in the way
that users think of the \bold \typewriter "\override" command. The result of
\bold \typewriter "\override NoteHead.color = #red" is red note heads. But how
does this result come about? The \bold \typewriter "\override" command sets a
default value \italic { that will later be used when objects are created }, but
the \bold \typewriter "\override" command \italic { does not (directly) modify
the property of any (already-existent) object. }; rather, the \bold \typewriter
"\override" command sets a default value (stored at the level of the voice,
staff, score or other context) \italic { that will be consulted when objects
are created at some later time in the future. } In other words, \bold
\typewriter "\override" doesn't operate on in-memory objects (like note heads);
\bold \typewriter "\override" operates on the bank of default settings that the
object-creating part of LilyPond consults when it is time to create new
in-memory objects.
}

\markup \vspace #1

\markup \justify {

This means that, at the moment that \bold \typewriter "\override NoteHead.color
= #red" is read, the command does absolutely nothing to any in-memory note head
objects that LilyPond has already created; rather, the command changes the
default settings that will be used when LilyPond creates more note heads in the
future.

}

\markup \vspace #1

\markup \justify {

The problem is that there is normally no motivation for users to make the
distinction that we're drawing here: users can -- and almost certainly \italic
do -- think something like ''\bold \typewriter "\override NoteHead.color =
#red" produces red note heads''; there's absolutely no reason for users to keep
in mind (or even know in the first place) that overrides override defaults
rather than the properties of in-memory objects themselves.

}

\markup \vspace #1

\markup \justify {

But this distinction -- overriding the defaults used to create objects versus
overriding the properties of objects once they have been created -- is perhaps
the only way to understand why LilyPond has an \bold \typewriter
"\overrideProperty" command: in 99 cases out of 100, users will \bold
\typewriter "\override" object-creation defaults; but in a small number of
cases it will be possible (or even required) to use \bold \typewriter
"\overrideProperty" to change the properties of in-memory objects that have
already been created.

}

\markup \vspace #1

\markup "Jean's guide to extending LilyPond includes this example ..."

\markup \vspace #1

\markup \translate #'(2 . 0) \code \verbatim-file #"override-object-property-1.ily"

\markup \vspace #1

\paper { indent = 4 }

\include "override-object-property-1.ily"

\markup \justify {

... which does nothing, and which interprets without raising an error. Given
that note heads have a staff position, \italic { why doesn't the override do
anything? } And given that the override doesn't do anything, \italic { why does
the example compile without warning? }

}

\markup \vspace #1

\markup \justify {

It's in cases like these that they distinction between \bold \typewriter "\override"
and \bold \typewriter "\overrideProperty" becomes clear.

}


\markup \vspace #1

\markup \justify {

\bold \typewriter "\override NoteHead.staff-position = -10" does nothing
because \bold \typewriter "\override" is used to set default values for object
creation, and because LilyPond evidently does not model note heads as having a
default staff position. This is, to be clear, a modeling decision (one could
imagine note heads taking a default staff position of, say, 0), but it's a
modeling decision that makes sense because the staff position of a note head
almost always results from the note head's pitch in combination with the clef
on which the note is spelled.

LilyPond certainly models note heads as having a staff position. But the
relevant point here is that LilyPond only sets that staff position of a note
head \bold \italic after the note head has been created as an object in memory.

}

\markup \vspace #1

\markup \justify {

And what about once the note head has been created as object in memory? This is precisely
the ''moment'' (or ''time'') during LilyPond's execution at which it becomes
possible to modify the staff position of a note head. This is precisely what
\bold \typewriter "\overrideProperty" is used for:

}

\markup \vspace #1

\markup \translate #'(2 . 0) \code \verbatim-file #"override-object-property-2.ily"

\markup \vspace #1

\paper { indent = 4 }

\include "override-object-property-2.ily"

\markup \justify {

The example isn't well-motivated (why change the staff position of a note head
instead of its pitch?), but it shows what \bold \typewriter "\overrideProperty"
can do that \bold \typewriter "\override" can not.

}

\markup \vspace #1

\markup \justify {

In summary, thinking of \bold \typewriter "\override" as \bold \typewriter
"\overrideDefault" might help explain what the function actually does, and why
\bold \typewriter "\overrideProperty" is able to change the properties of
objects after they've been created. All of this comes from thinking about \bold
\typewriter "\override" as operating on objects to be created in the future and
\bold \typewriter as operating on objects that have already been created.

}

\markup \vspace #1

\markup \justify {

But even with all of this, the distinction between the functions is almost
certain to remain obscure to almost all users. Why? Because thinking about
whether LilyPond has already created an object or whether LilyPond is soon to
create an object involves creating a mental model of the (invisible) steps
LilyPond is going through as it works, rather than just thinking about the
appearance of objects on the page.

}
