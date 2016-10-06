Markdown with GNU Make
======================

This is a skeleton project which processes every Markdown file in the current
directory and emits it as a HTML file.

It adds in a [Github style Markdown CSS](https://github.com/sindresorhus/github-markdown-css)
when it builds the HTML output, which makes it a bit nicer to look at.

Dependencies
------------

Some form of Unix like OS... and:

 * GNU Make
 * Markdown: I use the [Markdown.pl](https://daringfireball.net/projects/markdown/)
   reference implementation, which is awfully outdated but good enough.
   `brew install markdown` on macOS, for Ubuntu you'll need to go to that site,
   download the package, and move it somewhere into your path. For alternative
   Markdown implementations, just change the MARKDOWN variable in the Makefile.
 * sed: Tested on BSD sed, should work fine on GNU sed.
 * rm: Any sane Unix like distribution should come with this.

While this should in theory work in Windows with a couple tweaks, I'm not
entirely sure why anyone would want this. (Changing `rm` and the `-f` part to
`del` and `/f /q` should probably work. Not tested.)

Usage
-----

    git clone https://github.com/cynthia/make-markdown.git
    # Bootstrap your documentation project here by adding .md files into tree
    make

Alternatively, you can fork and clone your fork. But please don't try to send
me your actual project as a pull request!

To clean up the built output, just type

    make clean

License
-------

MIT