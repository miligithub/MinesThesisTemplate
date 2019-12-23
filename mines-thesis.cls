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
%% This work consists of the file lintex.dtx, the derived file
%% mines-thesis.cls and the template mines-thesis-template.tex
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mines-thesis}
[2020/01/10 v1.0 Colorado School of Mines dissertation/thesis class]
  %
  %   What we want is a single macro that will generate all of the
  %   frontmatter of the document, such as, the title page, abstract,
  %   authenticity page, table of contents, etc.\@ Each page of the
  %   frontmatter is created by individual macros. This keeps things
  %   modular and tidy. Any sections of the frontmatter that are not
  %   declared are ignored.
  %
  % \changes{v1.1}{2002/02/13}{added a TOC entry for the Table of
  %   Contents}
  % \changes{v3.6}{2011/06/13}{added code so that fancyhdr package could
  %   be used}
  %
  %    \begin{macrocode}
  \def\makefrontmatter{%
    \pagestyle {empty}
    \pagenumbering {roman}
    \maketitlepage
    \pagestyle {empty}  \makecopyrightpage
    \pagestyle {empty}  \makeauthenticitypage
    \setcounter {page} {3}
    \@ifdefined {@abstractfile}{\makeabstract}
    \pagestyle {fancy}
    \@ifdefined {@dedicationfile}{\makededication}
    \@ifdefined {@acknowledgementsfile}{\makeacknowledgements}
    \tableofcontents
    \ifthenelse{\boolean{hastables}}{\listoftables}{}
    \ifthenelse{\boolean{hasfigures}}{\listoffigures}{}
    \@ifdefined{@prefacefile}{\makepreface}
    \@ifdefined{@abbreviationsfile}{\makeabbreviations}
    \newpage
    \pagenumbering {arabic}
    \setcounter {page}{1}}
  %    \end{macrocode}
  %
  % \end{macro}
  %
  % \begin{macro}{\maketitlepage}
  %
  %   The title page is standard. The guidelines require uppercase
  %   throughout, so I have forced this wherever necessary.
  %
  % \changes{v3.3}{2002/03/07}{removed the tabular environment from
  % around the title macro. I still have the problem of not being able
  % to force a line break inside the title macro.}
  %
  %    \begin{macrocode}
  \def\maketitlepage{
    \vspace*{.85in}
    \begin{center}
      \spacing{1}
      \textbf{\MakeUppercase{\@title}}
      \hugeskip
      \hugeskip
      \hugeskip
      {\bigskip \MakeUppercase{\@author}}
    \end{center}
    \hugeskip \hugeskip \hugeskip \hugeskip \hugeskip \hugeskip
    {\spacing{1}
      \begin{center}
        \ifmasters A THESIS \else A DISSERTATION \fi
        SUBMITTED TO THE FACULTY OF GRADUATE STUDIES \\
        IN PARTIAL FULFILMENT OF THE REQUIREMENTS \\
        FOR THE DEGREE OF \\
        \hugeskip \hugeskip \hugeskip
        \ifmasters \MakeUppercase{\@degreename} OF
        \MakeUppercase{\@masterof}
        \else
        \MakeUppercase{\@degreename} OF PHILOSOPHY \fi \\
        \hugeskip \hugeskip
        GRADUATE PROGRAM IN \MakeUppercase{\@department} \\
        YORK UNIVERSITY \\
        TORONTO, ONTARIO \\
        \MakeUppercase{\@date}
      \end{center}}
    \newpage }
  %    \end{macrocode}
  % \end{macro}

\endinput
%%
%% End of file `mines-thesis.cls'.
