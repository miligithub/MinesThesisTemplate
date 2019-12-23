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
\PassOptionsToClass{letterpaper,10pt}{memoir}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}
\ProcessOptions
\LoadClass{memoir}
\renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont} \setlength{\textwidth}{6.5in}
\setlength{\textheight}{8in}
\pagenumbering{arabic} % needed even though this class will
                                % not show page numbers


\endinput
%%
%% End of file `mines-thesis.cls'.
