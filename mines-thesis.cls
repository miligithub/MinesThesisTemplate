%%
%% This is file `mines-thesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% lintex.dtx  (with options: `class')
%% 
%% Copyright 2020, Ming Li and Jian Lin, Colorado School of Mines
%% --------------------------------------------------------------
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either
%% version 1.3 of this license or (at your option) any
%% later version.
%% The latest version of the license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of
%% LaTeX version 2005/12/01 or later.
%% 
%% This work has the LPPL maintenance status `author-maintained'.
%% 
%% The current maintainer of this work is Ming Li and Jian Lin,
%% <mili@mymail.mines.edu>.
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mines-thesis}
[2020/01/10 v1.0 Colorado School of Mines dissertation/thesis class]
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{memoir}
}
\ProcessOptions\relax
\LoadClassWithOptions{memoir}
\def\year#1{\gdef\@year{#1}}
\def\degree#1#2{\gdef\@degreelv{#1}\@degreename{#2}}
\def\advisor#1{\gdef\@advisor{#1}}
\def\coadvisor#1{\gdef\@coadvisor{#1}}
\def\department#1{\gdef\@department{#1}}
\def\departmenthead#1{\gdef\@departmenthead{#1}}
\gdef\@author{Your Name}
\gdef\@title{Title of the Thesis}
\gdef\@year{\year}
\gdef\@degreelv{Doctor of Philosophy}
\gdef\@degreename{Geophysical Engineering}
\gdef\@advisor{Dr. Main Advisor}
\gdef\@advisor{Dr. Co Advisor}
\gdef\@department{Department of Some Name}
\gdef\@departmenthead{Dr. Department Head}
\setpagecc{5in}{3in}{*}
\def\makefrontmatter{
  \pagestyle {empty}
  \pagenumbering {roman}
  \maketitlepage
  \pagestyle {empty}
  \makecopyrightpage
  \setcounter {page} {3}
  \makeabstract
  \pagestyle {fancy}
  \@ifdefined {@dedication}{\makededication}
  \@ifdefined {@acknowledgements}{\makeacknowledgements}
  \tableofcontents
  \ifthenelse{\boolean{hastables}}{\listoftables}{}
  \ifthenelse{\boolean{hasfigures}}{\listoffigures}{}
  \newpage
  \pagenumbering {arabic}
  \setcounter {page}{1}}
\def\maketitlepage{
\clearpage
\vspace*{\fill}
\centering
\begin{minipage}{.6\textwidth}
  \MakeUppercase{\@title}
\end{minipage}
\vfill % equivalent to \vspace{\fill}
by\\
\@author
\clearpage
}
\endinput
%%
%% End of file `mines-thesis.cls'.
