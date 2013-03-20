Drag and Drop Pandoc-Style Citations from BibDesk
=================================================

`citeServiceTemplate-pandoc.txt` is a BibDesk template that provides
drag and drop support for pandoc-style citations. For example, I dragged
these two citations directly into this README from BibDesk:

    [@wood2006a; @beiser1993a]

`citeServiceTemplate-pandoc-bib.txt` and `citeServiceTemplate-pandoc-bib-script.sh` are a BibDesk template and a postprocessing shell script that provide drag and drop support for markdown-formatted reference lists. For example, I option-dragged this reference list directly into this README from BibDesk:

    Beiser, Frederick C. 1993. *The Fate of Reason: German Philosophy From Kant To Fichte*. Harvard University Press. 

    Wood, Allen W. 2006. “Fichte’s Intersubjective I.” *Inquiry* 49 (1) (Feb): 62–79. 


Installation
============

First, follow [these instructions][] to add the templates to BibDesk. When you are done, things should look like this:

![Screenshot: Adding the Template to BibDesk][]

Second, in the "Citation" Preference Pane:

+   set `Default Format` to `Template`,
then set `Template` to `citeServiceTemplate-pandoc.txt`;
+   set the `Format when holding Option key` to `Template`, then set `Template` to `citeServiceTemplate-pandoc-bib.txt`.

So things should look like this:

![Screenshot: Configuring BibDesk to use Template for Drag and Drop
Citations][]

Notes
=====

If your bibtex file is large, there will be a noticeable delay when option-dragging, so you will need to be a patient.

The postprocessing script looks for pandoc in `$HOME/.cabal/bin` and `/usr/local/bin`. If it is not found, you will get the following error message:

    Cannot find pandoc in path. Edit the PATH variable in citeServiceTemplate-pandoc-bib-script.sh

To fix this, edit line 6 of `citeServiceTemplate-pandoc-bib-script.sh`, replacing

    PATH=$HOME/.cabal/bin:/usr/local/bin:$PATH

with

    PATH=/path/to/pandoc:$PATH


  [these instructions]: http://sourceforge.net/apps/mediawiki/bibdesk/index.php?title=Templates#Adding_a_Template_to_BibDesk
  [Screenshot: Adding the Template to BibDesk]: adding-bibdesk-template.png
  [Screenshot: Configuring BibDesk to use Template for Drag and Drop Citations]: citation-screenshot.png
