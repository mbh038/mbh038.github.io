# md-cv

A jekyll-based markdown CV, which currently looks something like [this](http://mbh038.github.io), see this [blog post](http://blm.io/blog/markdown-academic-cv/) for details. Forked from the  markdown CV of [Ben Moore](https://blm.io/cv).

### How to use

To build, clone the repo and run jekyll:

```bash
git clone git://mbh038.github.io
cd md-cv/
jekyll serve
```
(You may need to [install jekyll](https://jekyllrb.com/docs/installation/).)

Then point your browser to [0.0.0.0:4000](http://0.0.0.0:4000).

### HTML version

The HTML version is generated by Jekyll under `_site` using `media/cv-screen.css`. Most changes from the original repo are artificial:

* fixed horizontal scrolling issue caused by lots of funky CSS positioning (lots of `left` etc.)
* messed with colours, fonts
* now imports font-awesome icons and Open sans
* moved `ul` into 3-col layout (iirc following [another markdown cv](https://github.com/davidhampgonsalves/resume) I tried)

### PDF version

Note the separate CSS for print and screen media (see `media/cv-print.css`), my approach was to build a somewhat "jazzy" html version and a toned-down print version (for PDF). My changes introduce CSS3 columns in some sections which currently don't print to PDF under the blink/webkit engines (as of March 2015), so to print properly I suggest firefox.

Another problem with the PDF is pagebreaks, they're often not handled gracefully so I've added one in explicitly. Say you want a pagebreak before the section titled "education" (`h2` text is set to `id` so use unique section headers!), the print media CSS would be:

```CSS
#education {
	page-break-before: always;
}
```
Latest addition
