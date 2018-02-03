# Move 2.0
A QBasic program I wrote when I was really young.

## Background

When I was very young, I had acess to a Tandy T1000.  This machine had DOS
installed on it and it came prepacked with a bunch of games and also QBasic
which at the time was an mainstream programming language.

My cousin, Daniel Phillips, showed me some basic commands in DOS and also
the basics of how to write a program in QBasic.  I fell in love and played
around with it for the entire summer instead of playing outside.

Years later, my father bought a Mac and I eventually persuaded him to let
me install an early hypervisor on it that let me run Windows in a VM hosted
by our family's mac.  This became my new playground (the Tandy had certainly
worn out by then :) ) So, one summer, I composed a program that takes a set
of commands and lets you move a cursor around the screen.

One day, after spending most of the summer afternoon working on this QBasic
program, I showed it to my father.  He asked me if I would print it out, so
I did.  He kept it in a drawer in his desk.  Within the past year, he has
returned this early relic of my past to me.

This repository houses the scanned in print out that my dad gave me (in PDF)
along with a first attempt at coding it up.

## Process

I used a very specific process for making [the recreated program](move20.bas),
and I've taken some notes here:

 - I did not use OCR. I typed it up line for line.
 - I copied/pasted. Guilty as charged. I tried to be very careful about making
   sure each difference in the printed up copy was represented.
 - I did not change any bugs that I found, and I saw at least two.
 - I did not change any of the poor grammar in the prompts.  So those are
   definitely preserved.
 - The eighth page got jammed in my scanner when I was trying to create the PDF
   and part of it ripped off. It's during the section of code that controls the
   walking, however, and the BASIC line number lines up with the command to walk
   a specific direction, so that's what I have put in there even though I am not
   100% sure that's what was really on the paper at that point.

## Fixes

I ran the program in a DOSbox and found that there is at least one syntax error
that keeps the program from executing; basic finds a `do without loop`.  So
I just removed that one, which means you can't break out of the square walk
by pressing a key.  The result of that and a few other fixes, such as making
the timer a bit longer for these super fast machines we have now, can be found
in the new [updated program](move21.bas).

## Running

This is a pretty OS-agnostic way to get Move 2.0 up and running on your machine!

 - Download [DOSbox](http://www.dosbox.com/download.php?main=1) for your
   platform.
 - Download [QBasic 4.5](http://www.qbasic.net/en/top-ten-downloads/) which
   is the programming language Move20 was written in.
 - Install DOSBox on your machine, and put the QB45.ZIP file downloaded above
   near it or in a place where you can find it easily using a well-known
   system path. On Mac, I used `~/dosprograms`. This repository works as a
   decent location; the [.gitignore](.gitignore) file has been set to ignore them.
 - The DOSBox emulator does not come with PKZIP or any other archiver program
   built-in, so I suggest extracting QBasic in its well known directory so you
   can just run it later.
 - Run DOSBox.
 - A prompt will come up for `Z:\`. This is the internal DOS drive that DOSbox
   runs from. Mount the well-known location using the `mount` command like so:

   `mount c ~/dosprograms`
 - Now change to the C drive so you can manipulate some files there:

   `c:`
 - Now change directories into the QBasic directory:

   `cd qb45`
 - Now run QBasic just like you always used to:

   `qb`

 - Press escape to clear the initial dialog box.
 - Use your mouse if DOSBox is emulating it to go to `File` ->
   `Open Program` or press `Alt`,`F`,`O`.
 - Enter `..` in the QBasic open dialog, to go up a directory
   to where you put Move20.
 - I suggest opening `MOVE21.BAS` because it contains fixes to
   actually make it run.
 - Press F5 to make QBasic start running the program!
