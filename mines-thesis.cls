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
\RequirePackage{shapepar}
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

\def\year#1{\gdef\@year{#1}}
\def\degree#1#2{\gdef\@degreelv{#1}\@degreename{#2}}
\def\advisor#1{\gdef\@advisor{#1}}
\def\coadvisor#1{\gdef\@coadvisor{#1}}
\def\department#1{\gdef\@department{#1}}
\def\departmenthead#1{\gdef\@departmenthead{#1}}
\gdef\@author{Your Name}
\gdef\@title{Title of the Thesis}
\gdef\@year{2020}
\gdef\@degreelv{Doctor of Philosophy}
\gdef\@degreename{Geophysical Engineering}
\gdef\@advisor{Dr. Main Advisor}
\gdef\@advisor{Dr. Co Advisor}
\gdef\@department{Department of Some Name}
\gdef\@departmenthead{Dr. Department Head}
\setpagecc{11in}{8.5in}{*}
\setlrmarginsandblock{1in}{*}{*}
\setulmarginsandblock{1in}{*}{*}
\setheadfoot{\onelineskip}{2\onelineskip}
\setheaderspaces{*}{2\onelineskip}{*}
\DoubleSpacing
\checkandfixthelayout

\newcommand\makefrontmatter{
  \pagenumbering{roman}
\pagestyle{empty}
\maketitlepage
\pagestyle{empty}
\makecopyrightpage
\pagestyle{plain}
\newpage
\pagenumbering{arabic}
  \setcounter{page}{1}
}
\newcommand\invertedpyramid{%
{0}             %line center at x=7
{0}  b{0}\\     % text starts at (0,0)
{0}  t{-10}{20}\\ % Line at y=0 starts at x=0 with length 14
{3} t{-5}{10}\\  % Line at y=10 starts at x=0 with length 14
{3} e{5}       % text ends at (7,15)
}
\newcommand\maketitlepage{
  \clearpage
\vspace*{\fill}
\begin{center}
\begin{minipage}{.8\textwidth}
      \centering
      \shapepar{\invertedpyramid}
      \MakeUppercase{\@title}
\end{minipage}
\end{center}
  \vspace{\fill}
  \begin{center}
by\\
    \@author
\end{center}
\clearpage
}
\newcommand\makecopyrightpage{
  \clearpage
\vspace*{\fill}
\begin{center}
\begin{minipage}{.8\textwidth}
\centering
      Copyright~by~\@author~\@year\\
      All~Rights~Reserved
\end{minipage}
\end{center}
\vspace{\fill}
\clearpage
}
\endinput
%%
%% End of file `mines-thesis.cls'.
