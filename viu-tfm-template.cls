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

\usepackage[a4paper,margin=3cm,headsep=1.9cm,footskip=-0.7cm]{geometry}


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
% evita cortar palabras
\RequirePackage[none]{hyphenat}
\sloppy

%--------------------------------------------------------------------------
% Fonts
%--------------------------------------------------------------------------
\RequirePackage{fontspec}
\setmainfont{Arial}


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
% Header and footer styling
%--------------------------------------------------------------------------
\RequirePackage{tikz}
\RequirePackage{fancyhdr}
\pagestyle{fancy}

\renewcommand{\headrulewidth}{0pt}

%\usepackage{xpatch}



\renewcommand{\footrulewidth}{0pt}

\fancyhead{} % clear all header fields
\fancyheadoffset{2.2cm}
\fancyhead[LE]{
    \begin{tikzpicture}
        \path (0, 0);
        \node at (0,0){\includesvg[height=1.5cm]{img/logoVIU-pildora.svg}};
        \node at (2.5,0){\includesvg[height=1cm]{img/logoVIU-letras.svg}};
        \draw [maincolor,line width=1] (1.32,-0.8) --(16.3,-0.8);
    \end{tikzpicture}
}
% logotipo cambiado para páginas impares
\fancyhead[RO]{
    \begin{tikzpicture}
        \path (0, 0);
        \node at (0,0){\includesvg[height=1cm]{img/logoVIU-letras.svg}};
        \node at (2.4,0){\includesvg[height=1.5cm]{img/logoVIU-pildora.svg}};
        \draw [maincolor,line width=1] (1.2,-0.8) --(-13.8,-0.8);
    \end{tikzpicture}
}

\fancyfootoffset{2.2cm}
\fancyfoot{} % clear all footer fields
\fancyfoot[LE]{
    \begin{tikzpicture}
        \path (0, 0);
        \node at (0,0){\includesvg[width=1cm]{img/pildora2.svg}};
        \node at (0,0){\color{white}\textbf{\thepage}};
        \node at (6.3,0){\footnotesize\textit{\titulacion}};
        \draw [maincolor,line width=1] (1.6,0.6) --(16.55,0.6);
    \end{tikzpicture}
}
\fancyfoot[RO]{
    \begin{tikzpicture}
        \path (0, 0);
        \node at (0,0){\includesvg[width=1cm]{img/pildora2.svg}};
        \node at (0,0){\color{white}\textbf{\thepage}};
        \node at (-2.5,0.02){\footnotesize\textit{\titulo}};
        \draw [maincolor,line width=1] (-1.5,0.6) --(-16.45,0.6);
    \end{tikzpicture}
}


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
% Tables
%--------------------------------------------------------------------------
\RequirePackage{tabularray}
\UseTblrLibrary{varwidth}
\SetTblrInner{
    vlines,
    hlines,
}

\NewTblrEnviron{covertbl}
\SetTblrInner[covertbl]{
    vline{1,2,3}={6pt},
    vline{4}={0pt},
%    rowsep=6pt,
%    colsep=12pt,
    cells={l,t},
    width=0.8\linewidth
}

%--------------------------------------------------------------------------
% Lists
%--------------------------------------------------------------------------
\usepackage{enumitem}
\setlist{itemsep=0pt,parsep=0pt,partopsep=0pt}
% ITEMIZE
\renewcommand{\labelitemi}{${\color{maincolor}\bullet}$}
\renewcommand{\labelitemii}{$\textcolor{maincolor}{\circ}$}
\renewcommand{\labelitemiii}{$\textcolor{maincolor}{\diamond}$}
\renewcommand{\labelitemiv}{$\textcolor{maincolor}{\triangleright}$}
% ENUMERATE
\setlist[enumerate]{font=\bfseries\color{maincolor}}

%--------------------------------------------------------------------------
% Bibliography
%--------------------------------------------------------------------------
%\usepackage[backend=biber,style=apa,natbib=true,sorting=nyt,url=false, isbn=false,doi=false]{biblatex}
\usepackage[backend=biber,style=apa6]{biblatex}

\DefineBibliographyStrings{spanish}{%
    andothers = {et al\adddot},
}



%--------------------------------------------------------------------------
% Portada
%--------------------------------------------------------------------------
% portada separada en otro fichero: coverpage.tex
\input{\ClassPath/coverpage}