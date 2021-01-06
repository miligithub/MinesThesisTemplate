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
\RequirePackage{environ}
\RequirePackage{calc}
\newboolean{review}
\DeclareOption{draft}{\setboolean{review}{true}}
\DeclareOption{final}{\setboolean{review}{false}
\PassOptionsToClass{final,12pt,onecolumn,openany}{memoir}}
\DeclareOption*{
\PassOptionsToClass{\CurrentOption}{memoir}
}
\ExecuteOptions{final}
\ProcessOptions\relax
\LoadClass[oneside,letterpaper]{memoir}
\setpagecc{11in}{8.5in}{*}
\setlrmarginsandblock{1in}{*}{*}
\setulmarginsandblock{1in}{*}{*}
\setheadfoot{\onelineskip}{2\onelineskip}
\setheaderspaces{*}{2\onelineskip}{*}


\DoubleSpacing
\@ifundefined{DoubleSpacing}{
\newcommand{\linespace}{1.5}
}{
\newcommand{\linespace}{2}
}
\setlength{\parindent}{2em}
\let\@afterindentfalse\@afterindenttrue
\@afterindenttrue
\checkandfixthelayout[nearest]
\tightlists % use \firmlists if vertical gaps is wanted
\tolerance=1
\emergencystretch=\maxdimen
\hyphenpenalty=10000
\hbadness=10000
\renewcommand{\abstractname}{ABSTRACT}
\renewcommand{\chaptername}{CHAPTER}
\renewcommand{\appendixname}{APPENDIX}
\renewcommand{\contentsname}{TABLE OF CONTENTS}
\renewcommand{\listfigurename}{LIST OF FIGURES}
\renewcommand{\listtablename}{LIST OF TABLES}
\newcommand{\acknowledgmentname}{ACKNOWLEDGMENTS}
\renewcommand{\bibname}{REFERENCES}
\renewcommand{\year}[1]{\gdef\@year{#1}}
\newcommand{\degree}[2]{\gdef\@degreelv{#1}\gdef\@degreename{#2}}
\newcommand{\advisor}[1]{\gdef\@advisor{#1}}
\newcommand{\coadvisor}[1]{\gdef\@coadvisor{#1}}
\newcommand{\department}[1]{\gdef\@department{#1}}
\newcommand{\departmenthead}[1]{\gdef\@departmenthead{#1}}
\gdef\@author{Student Name}
\gdef\@title{This is the first line of a  medium length title,
\protect\\ this is the second line}
\gdef\@year{2020}
\gdef\@degreelv{Doctor of Philosophy}
\gdef\@degreename{Computer Science}
\gdef\@advisor{Dr. Main Advisor}
\gdef\@department{Department of XXXXX}
\gdef\@departmenthead{Dr. Department Head}
\newboolean{auto} % for auto pyramid
\setboolean{auto}{false}
\DeclareRobustCommand{\invpyr}[1]{
\vbox{
\vspace{10pt}
\hsize=\textwidth
\parindent=\z@
\emergencystretch=1in
\parshape 6
0.01\textwidth .98\textwidth
0.1\textwidth .8\textwidth
0.15\textwidth .7\textwidth
0.2\textwidth .6\textwidth
0.25\textwidth .5\textwidth
0.3\textwidth .4\textwidth
\leftskip=\z@ plus 1fil
\rightskip=\z@ plus -1fil
\parfillskip=\z@ plus 2fil
#1\par
}
}
\newcommand{\autotitle}{\setboolean{auto}{true}}
\newcommand{\maketitlepage}{
\clearpage
\quad\\[\baselineskip]
\begin{vplace}
\centering
\ifthenelse{\boolean{auto}}
{\invpyr{\MakeTextUppercase{\@title}}}
{\@title}
\end{vplace}
\begin{center}
by\\
\@author
\end{center}
\clearpage
} % end of \maketitlepage
\newcommand{\makecopyrightpage}{
\clearpage
\begin{vplace}[0.8]
\centering
Copyright~by~\@author~\@year\\
All~Rights~Reserved
\end{vplace}
\clearpage
} % end of \makecopyrightpage
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
\@ifundefined{@coadvisor}{
\vspace{2.5em}
}{
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
} % end of \makesubmittalpage
\newcommand{\@saveabstract}[1]{\long\gdef\@abstract{#1}}
\renewenvironment{abstract}{\Collect@Body\@saveabstract}{}
\newcommand{\makeabstractpage}{
\clearpage 
\chapter*{\abstractname}
\@abstract
\addcontentsline{toc}{chapter}{\abstractname}
\clearpage
} % end of \makeabstractpage

\renewcommand{\cftchapterdotsep}{\cftdotsep} 
\renewcommand{\cftchapterfont}{\normalfont\MakeTextUppercase}
\renewcommand{\cftchapterpagefont}{\normalfont}
\renewcommand{\cftchapterleader}{\cftdotfill{\cftchapterdotsep}}
\renewcommand{\cftchaptername}{\chaptername\space}
\renewcommand{\cftappendixname}{\appendixname\space}
\renewcommand{\cftdotsep}{1}
\setlength{\cftbeforechapterskip}{\z@ plus \z@}
\renewcommand{\insertchapterspace}{}

\renewcommand{\l@chapapp}[3]{%
\ifnum \c@tocdepth >\m@ne
\begin{SingleSpace}
\cftchapterbreak
\vskip \cftbeforechapterskip
{
\leftskip \cftchapterindent\relax
%%%     \memRTLleftskip \cftchapterindent\relax
\rightskip \@tocrmarg
%%%     \memRTLrightskip \@tocrmarg
\parfillskip -\rightskip
%%%     \parfillskip -\memRTLrightskip
\parindent \cftchapterindent\relax
\@afterindenttrue
\interlinepenalty\@M
\leavevmode
\let\@cftbsnum \cftchapterpresnum
\let\@cftasnum \cftchapteraftersnum
\let\@cftasnumb \cftchapteraftersnumb
\def\@chapapp@head{#3}%
\settowidth{\@tempdima}{\cftchapterfont\@chapapp@head}%
\addtolength{\@tempdima}{\cftchapternumwidth}%
\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
%%%     \advance\memRTLleftskip \@tempdima \null\nobreak\hskip -\memRTLleftskip
{\cftchapterfont {#1}}\nobreak
\cftchapterfillnum{#2}}
\end{SingleSpace} 
\fi}

\newcommand{\@dottedtocline@sec}[5]{%
\ifnum #1>\c@tocdepth \else
\begin{SingleSpace}
\vskip \z@ \@plus.2\p@
{\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
\parindent #2\relax\@afterindenttrue
\interlinepenalty\@M
\leavevmode
\@tempdima #3\relax
\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
{#4}\nobreak
\leaders\hbox{$\m@th
\mkern \@dotsep mu\hbox{.}\mkern \@dotsep
mu$}\hfill
\nobreak
\hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor #5}%
\par}
\end{SingleSpace}%
\fi}

\renewcommand{\cftfigurename}{\figurename\space}
\renewcommand{\cfttablename}{\tablename\space}
\let\oldl@figure=\l@figure
\renewcommand{\l@figure}{\SingleSpacing\oldl@figure}
\let\oldl@table=\l@table
\renewcommand{\l@table}{\SingleSpacing\oldl@table}
\AtBeginDocument{
\@ifpackageloaded{hyperref}{
\settocpreprocessor{chapter}{%
\let\tempf@rtoc\f@rtoc%
\def\f@rtoc{%When hyperref is used,
\texorpdfstring{\MakeTextUppercase{\tempf@rtoc}}{\tempf@rtoc}}%
}
\renewcommand{\cftchapterfont}{\normalfont}
}{} 
}
\newcommand{\makecft}{ 
\tableofcontents*
\clearpage 
\listoffigures
\clearpage
\listoftables
\clearpage
} % end of \makecft


\renewcommand{\@dotsep}{1}
\renewcommand{\l@section}{
\@dottedtocline@sec{1}{1.5em}{2.3em}
}
\newcommand{\@saveacknowledgments}[1]{
\long\gdef\@acknowledgments{#1}}
\newenvironment{acknowledgment}{\Collect@Body\@saveacknowledgments}{}
\newcommand{\makeacknowledgepage}{
\@ifundefined{@acknowledgments}{}{
\clearpage 
\chapter*{\acknowledgmentname}
\@acknowledgments
\addcontentsline{toc}{chapter}{\acknowledgmentname}
\clearpage}
} % end of \makeacknowledgepage
\newcommand{\@savededication}[1]{
\long\gdef\@dedication{#1}}
\newenvironment{dedication}{\Collect@Body\@savededication}{}
\newcommand{\makededicationpage}{
\@ifundefined{@dedication}{}{
\clearpage 
\@dedication
\clearpage}
} % end of \makededicationpage
\newcommand{\makefrontmatter}{
\pagenumbering{roman}
\pagestyle{empty}
\maketitlepage
\makecopyrightpage
\pagestyle{plain}
\setcounter{page}{2}
\makesubmittalpage
\makeabstractpage
\makecft
\makeacknowledgepage
\makededicationpage
\pagenumbering{arabic}
\setcounter{page}{1}

\raggedyright[.5fil] % same as \raggedright
} % end of \makefrontmatter
\makechapterstyle{mineschapter}{%
\setlength{\midchapskip}{.2\baselineskip}
\setlength{\afterchapskip}{.2\baselineskip}
\renewcommand{\chapnumfont}{\normalfont}
\renewcommand{\chaptitlefont}{\normalfont}
\renewcommand{\chapterheadstart}{}
\renewcommand{\printchapternum}{}
\renewcommand{\printchapternonum}{}
\renewcommand{\printchaptername}{%
\centerline{\chapnumfont\MakeTextUppercase{\@chapapp\ \thechapter}}}
\renewcommand{\printchaptertitle}[1]{%
\centering \vbox{\chaptitlefont\invpyr{\MakeTextUppercase{##1}}}
}
}
\chapterstyle{mineschapter}
\newcommand{\reproduceinfo}[1]{
\begin{center}
#1\par
\end{center}
}
\newcommand{\reproduceabstract}{
{\noindent Abstract\par}
}
\AtBeginDocument{
\setlength{\footmarkwidth}{\z@}
\setlength{\footmarksep}{-\footmarkwidth}
\setlength{\footparindent}{\footmarkwidth}
\renewcommand{\footnoterule}{%
\kern .5\baselineskip%
\hrule width \columnwidth \kern .5\baselineskip}
}
\newcommand{\symbolfootnote}[2]{
\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\footnote[#1]{#2}
\renewcommand{\thefootnote}{\arabic{footnote}}
}

\renewcommand{\section}{\@startsection{section}
{1} % level
{\z@} % indent from left margin
{.1ex} % skip above heading
{.1ex} % heading between title and text
{\normalfont\normalsize\bfseries}}
\renewcommand{\subsection}{\@startsection{subsection}
{1} % level
{\z@} % indent from left margin
{.1ex} % skip above heading
{.1ex} % heading between title and text
{\normalfont\normalsize\bfseries}}
\renewcommand{\subsubsection}{\@startsection{subsubsection}
{1} % level
{\z@} % indent from left margin
{.1ex} % skip above heading
{.1ex} % heading between title and text
{\normalfont\normalsize\bfseries}}
\AtBeginDocument{
\@ifpackageloaded{longtable}{
\setlength{\LTcapwidth}{\linewidth}

}{}
}
\setlength{\bibitemsep}{\baselineskip}
\newlength{\bibparskip}\setlength{\bibparskip}{.5\baselineskip}
\let\oldthebibliography\thebibliography
\renewcommand\thebibliography[1]{%
\SingleSpacing
\oldthebibliography{#1}%
\setlength{\parskip}{\bibitemsep}%
\setlength{\itemsep}{\bibparskip}%
}


\AtBeginDocument{
\@ifpackageloaded{pdflscape}{
\newcommand{\Lpagenumber}{\ifdim\textwidth=\linewidth\else\bgroup
\dimendef\margin=0 %use \margin instead of \dimen0
\ifodd\value{page}\margin=\oddsidemargin
\else\margin=\evensidemargin
\fi
\raisebox{\dimexpr -\topmargin-\headheight-\headsep-0.5\linewidth}[0pt][0pt]{%
\rlap{\hspace{\dimexpr \margin+\textheight+\footskip}%
\llap{\rotatebox{90}{\thepage}}}}%
\egroup\fi
}
\@ifpackageloaded{everypage}{
\AddEverypageHook{\Lpagenumber}%
\let\oldlandscape=\landscape
\let\endoldlandscape=\endlandscape
\renewenvironment{landscape}{
\oldlandscape\pagestyle{empty}\begin{vplace}}{
\end{vplace}\endoldlandscape
\pagestyle{plain}}
}{}
}{} 
}
\endinput
%%
%% End of file `mines-thesis.cls'.
