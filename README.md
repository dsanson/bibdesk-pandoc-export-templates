Drag and Drop Pandoc-Style Citations from BibDesk
=================================================

`citeServiceTemplate-pandoc.txt` is a BibDesk template that provides
drag and drop support for pandoc-style citations. For example, I dragged
these two citations directly into this README from BibDesk:

    [@wood2006a; @beiser1993a]

`citeServiceTemplate-pandoc-bib.txt` and `citeServiceTemplate-pandoc-bib.sh` are a BibDesk template and a postprocessing shell script that provide drag and drop support for markdown-formatted reference lists. For example, I option-dragged this reference list directly into this README from BibDesk:

    Beiser, Frederick C. 1993. *The Fate of Reason: German Philosophy From Kant To Fichte*. Harvard University Press. 

    Wood, Allen W. 2006. “Fichte’s Intersubjective I.” *Inquiry* 49 (1) (Feb): 62–79. 


Installation
============

First, follow [these instructions][] to add the templates to BibDesk. When you are done, things should look like this:

![Screenshot: Adding the Template to BibDesk][]

Next, in the "Citation" Preference Pane:

+   set `Default Format` to `Template`,
then set `Template` to `citeServiceTemplate-pandoc.txt`;
+   set the `Format when holding Option key` to `Template`, then set `Template` to `citeServiceTemplate-pandoc-bib.txt`.

So things should look like this:

![Screenshot: Configuring BibDesk to use Template for Drag and Drop
Citations][]

  [citeServiceTemplate-pandoc.txt]: https://raw.github.com/dsanson/bibdesk-pandoc-citation-template/master/citeServiceTemplate-pandoc.txt
  [these instructions]: http://sourceforge.net/apps/mediawiki/bibdesk/index.php?title=Templates#Adding_a_Template_to_BibDesk
  [Screenshot: Adding the Template to BibDesk]: adding-bibdesk-template.png
  [Screenshot: Configuring BibDesk to use Template for Drag and Drop Citations]: citation-screenshot.png
