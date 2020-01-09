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
\RequirePackage{ifthen}
\newboolean{review}
\DeclareOption{draft}{\setboolean{review}{true}}
\DeclareOption{final}{\setboolean{review}{false}
\PassOptionsToClass{letterpaper,12pt,oneside,onecolumn,final,openany}{report}}
\DeclareOption*{
\PassOptionsToClass{\CurrentOption}{memoir}
}
\ExecuteOptions{draft,letterpaper,12pt}
\ProcessOptions\relax
\LoadClassWithOptions{memoir}

\newboolean{auto} % for auto pyramid
\setboolean{auto}{false}
\def\year#1{\gdef\@year{#1}}
\newcommand{\degree}[2]{\gdef\@degreelv{#1}\gdef\@degreename{#2}}
\def\advisor#1{\gdef\@advisor{#1}}
\def\coadvisor#1{\gdef\@coadvisor{#1}}
\def\department#1{\gdef\@department{#1}}
\def\departmenthead#1{\gdef\@departmenthead{#1}}
\gdef\@author{Your Name}
\gdef\@title{This is the first line of a  medium length title,
this is the second line}
\gdef\@year{2020}
\gdef\@degreelv{Doctor of Philosophy}
\gdef\@degreename{Computer Science}
\gdef\@advisor{Dr. Main Advisor}
\gdef\@department{Department of Some Name}
\gdef\@departmenthead{Dr. Department Head}
\setpagecc{11in}{8.5in}{*}
\setlrmarginsandblock{1in}{*}{*}
\setulmarginsandblock{1in}{*}{*}
\setheadfoot{\onelineskip}{2\onelineskip}
\setheaderspaces{*}{2\onelineskip}{*}
\DoubleSpacing
\checkandfixthelayout

\newcommand{\makefrontmatter}{
  \pagenumbering{roman}
\pagestyle{empty}
\maketitlepage
\pagestyle{empty}
\makecopyrightpage
\pagestyle{plain}
\setcounter {page} {2}
\makesubmittalpage
\clearpage
\pagenumbering{arabic}
  \setcounter{page}{1}
}
\DeclareRobustCommand{\invpyr}[1]{
\vbox{
\hsize=\textwidth
    \parindent=0pt
    \emergencystretch=1in
    \parshape 6
    0.01\textwidth .98\textwidth
    0.1\textwidth .8\textwidth
    0.15\textwidth .7\textwidth
    0.2\textwidth .6\textwidth
    0.25\textwidth .5\textwidth
    0.3\textwidth .4\textwidth
    \leftskip=0pt plus 1fil
    \rightskip=0pt plus -1fil
    \parfillskip=0pt plus 2fil
    #1\par
}
}
\newcommand{\autotitle}{\setboolean{auto}{true}}
\newcommand{\maketitlepage}{
\clearpage
\begin{vplace}
\centering
\ifthenelse{\boolean{auto}}
{\invpyr{\MakeUppercase{\@title}}}
{\@title}
\end{vplace}
  \begin{center}
by\\
    \@author
\end{center}
\clearpage
}
\newcommand{\makecopyrightpage}{
\clearpage
\begin{vplace}[0.8]
\centering
Copyright~by~\@author~\@year\\
All~Rights~Reserved
\end{vplace}
\clearpage
}

\newcommand{\makesubmittalpage}{
\clearpage
A thesis submitted to the Faculty and the Board of
Trustees of the Colorado School of Mines in partial
fulfillment of the requirements for the degree of
{\@degreelv} ({\@degreename}).

\vspace{2em}
\begin{flushleft}
Golden, Colorado\\[.5em] 
Date \underline{\hspace{2in}}
\end{flushleft}

\vspace{.5em}
\begin{flushright}
Signed: \underline{\hspace{2in}}\\
{\@author}\\[2em]

Signed: \underline{\hspace{2in}}\\
\begin{SingleSpace}
{\@advisor}\\
Thesis Advisor\\[2em]
\end{SingleSpace}

\@ifundefined{@coadvisor}
{
\vspace{2.5em}
}
   {
Signed: \underline{\hspace{2in}}\\
\begin{SingleSpace}
{\@coadvisor}\\
Thesis Advisor 
\end{SingleSpace}
   }

\end{flushright}

\begin{flushleft}
Golden, Colorado\\[.5em] 
Date \underline{\hspace{2in}}
\end{flushleft}

\vspace{.5em}
\begin{flushright}
Signed: \underline{\hspace{2in}}\\

\begin{SingleSpace}
{\@departmenthead}\\ 
Professor and Head\\
{\@department} 
\end{SingleSpace}

\end{flushright}

\clearpage
}
\newcommand{\makeabstractpage}{
\clearpage

\clearpage
}

\endinput
%%
%% End of file `mines-thesis.cls'.
