%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plantilla LaTeX para el TFM de la VIU (https://www.universidadviu.com/es/)
%
% Authors:
%   Rubén Gómez Olivencia (rugoli@gmail.com)
%     Repositorio: https://github.com/yuki/VIU_TFM_LaTeX_template
%     https://twitter.com/rugoli
%
% License:
%   CC BY-SA 4.0 (https://creativecommons.org/licenses/by-sa/4.0/)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%--------------------------------------------------------------------------
% Class configuration
%--------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{viu-tfm-template}[2021/11/24 Template for VIU's TFM]
\LoadClass[11pt,a4paper,titlepage,twoside,openany]{book}

\usepackage[left=3.00cm, right=3.00cm, top=3.00cm, bottom=3.00cm]{geometry}


%--------------------------------------------------------------------------
% Language
%--------------------------------------------------------------------------
\RequirePackage[spanish]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage{csquotes}



%--------------------------------------------------------------------------
% Paragraph's style
%--------------------------------------------------------------------------
\setlength{\parindent}{0em} % identation
\setlength{\parskip}{1.2em}
\renewcommand{\baselinestretch}{1.4}

\sloppy % evita cortar palabras

%--------------------------------------------------------------------------
% Fonts
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
% TOC
%--------------------------------------------------------------------------
\renewcommand\@dotsep{200}

\renewcommand\tableofcontents{
    \begingroup
    \hypersetup{hidelinks} % hide links in TOC, too much blue in it

    \chapter*{\contentsname}
    \setcounter{tocdepth}{3}    % add to TOC subsubsections
    \setcounter{secnumdepth}{3} % add to subsubsections labels
    \setlength{\parskip}{0em}
    \@starttoc{toc}
    \setlength{\parskip}{1.2em}
    \endgroup
    \clearpage
}

\@addtoreset{chapter}{part}


%--------------------------------------------------------------------------
% Graphics and Color definitions
%--------------------------------------------------------------------------
\RequirePackage{graphicx}
\RequirePackage{svg} % for svg images

\RequirePackage{tcolorbox}
\tcbuselibrary{raster,fitting,minted,many,listings,breakable,skins}
\usetikzlibrary{decorations.pathmorphing}

\RequirePackage{xcolor}


%--------------------------------------------------------------------------
% Chapters and Titles definitions
%--------------------------------------------------------------------------
\RequirePackage{titlesec}

\titleclass{\chapter}{straight} % removes page break after new chapter

\titleformat{\chapter}[block]
{\huge\bfseries\color{maincolor}} % format of title
{\thechapter. }                      % label before title
{0pt} % length of separation between label and title
{}    % before-code hook
\titlespacing{\chapter} {0pt}{0pt}{0pt} % with 0pt maintains \parskip space


\titleformat{\section}
{\fontsize{16pt}{16pt}\bfseries\color{maincolor}}
{\thesection. }
{0pt}
{}
\titlespacing*{\section} {0pt}{0pt}{0pt}


\titleformat{\subsection}
{\fontsize{14pt}{14pt}\bfseries\color{maincolor}}
{\thesubsection. }
{0pt}
{}
\titlespacing*{\subsection} {0pt}{0pt}{0pt}


\titleformat{\subsubsection}
{\fontsize{12pt}{12pt}\bfseries\color{maincolor}}
{\thesubsubsection. }
{0pt}
{}
\titlespacing*{\subsubsection}{0pt}{0pt}{0pt}


\titleformat{\paragraph}
{\fontsize{11pt}{11pt}\bfseries\color{maincolor}}
{\theparagraph. }
{0pt}
{\uline}
\titlespacing*{\paragraph}{0pt}{0pt}{-1em}


%--------------------------------------------------------------------------
% Links
%--------------------------------------------------------------------------
\RequirePackage[linktoc=all]{hyperref}
\urlstyle{same}
\hypersetup{
    colorlinks=true,
        allcolors=maincolor,
        bookmarks=true,
    bookmarksopen=true
}
\RequirePackage{href-ul}




%--------------------------------------------------------------------------
% Bibliography
%--------------------------------------------------------------------------
%\usepackage[backend=biber,style=apa,natbib=true,sorting=nyt,url=false, isbn=false,doi=false]{biblatex}
\usepackage[backend=biber,style=apa]{biblatex}

\DefineBibliographyStrings{spanish}{%
    andothers = {et al\adddot},
}



%--------------------------------------------------------------------------
% Portada
%--------------------------------------------------------------------------
% portada separada en otro fichero: coverpage.tex
\input{\ClassPath/coverpage}