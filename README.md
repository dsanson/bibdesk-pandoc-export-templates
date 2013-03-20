Dragging and Dropping Pandoc-Style Citations from BibDesk
=========================================================

`exportPandocCitations.txt` is a [BibDesk][] template that exports
[pandoc][]-style citations.

You can use this to drag and drop citations from BibDesk into your
pandoc document in your preferred editor. For example, I dragged these
two citations into this README in MacVim:

    [@wood2006a; @beiser1993a]

Exporting Markdown-formatted Reference Lists from BibDesk
=========================================================

`exportMarkdownReferences.txt` and
`exportMarkdownReferences.sh` are a BibDesk template and a
postprocessing shell script that together export markdown formatted
reference lists.

You can use this to drag and drop formatted reference lists from BibDesk
into your pandoc document in your preferred editor. For example, I
option-dragged this list:

    Beiser, Frederick C. 1993. *The Fate of Reason: German Philosophy From Kant To Fichte*. Harvard University Press. 

    Wood, Allen W. 2006. “Fichte’s Intersubjective I.” *Inquiry* 49 (1) (Feb): 62–79.

Installation
============

Adding the Templates
--------------------

First, follow [these instructions][] to add the templates to BibDesk.
When you are done, things should look like this:

![Screenshot: Adding the Template to BibDesk][]

Configuring Drag and Drop Support
---------------------------------

I prefer to configure BibDesk to drag and drop citations, and option drag and drop formatted references. To set this up, in the "Citation" Preference Pane:

-   set `Default Format` to `Template`, then set `Template` to
    `exportPandocCitations.txt`;
-   set the `Format when holding Option key` to `Template`, then set
    `Template` to `exportMarkdownReferences.txt`.

So things should look like this:

![Screenshot: Configuring BibDesk to use Template for Drag and Drop
Citations][]

Dependencies, Customization, Troubleshooting
============================================

Pandoc
------

The post-processing script depends on pandoc. The script looks for
pandoc in `$HOME/.cabal/bin` and `/usr/local/bin`. If it is not found,
you will get the following error message:

    Cannot find pandoc in path. Edit the PATH variable in exportMarkdownReferences.sh

To fix this, edit line 6 of `exportMarkdownReferences.sh`,
replacing

    PATH=$HOME/.cabal/bin:/usr/local/bin:$PATH

with

    PATH=/directory/containing/pandoc:$PATH

Other Output Formats and Styles
-------------------------------

`exportMarkdownReferences` provides a model that could be used to export bibliographies in any of the styles supported by [csl][] and any of the output formats supported by pandoc.

The post-processing script uses your default csl style. If you want
it to use a different style, you will need to modify the script to pass
the `--csl=/path/to/example.csl` option to pandoc.

Modifying the script to output other plain-text formats, like HTML or RST, is a matter of replacing `-t markdown` with `-t html` or `-t RST`. Modifying the script to output non-plain-text formats, like DOCX, ODT, and PDF, would require a little bit more work, but not much.

Slowness
--------

If your bibtex file is large, there will be a noticeable delay when
dragging formatted references, as it takes a moment for pandoc to parse
your bibtex file and format the references. On a recent MacBook Air,
with a 1307 entry bibtex file, the delay is less than a second.

  [BibDesk]: http://bibdesk.sourceforge.net/
  [pandoc]: http://johnmacfarlane.net/pandoc/
  [these instructions]: http://sourceforge.net/apps/mediawiki/bibdesk/index.php?title=Templates#Adding_a_Template_to_BibDesk
  [Screenshot: Adding the Template to BibDesk]: adding-bibdesk-template.png
  [Screenshot: Configuring BibDesk to use Template for Drag and Drop Citations]: citation-screenshot.png
  [csl]: https://github.com/citation-style-language/styles
