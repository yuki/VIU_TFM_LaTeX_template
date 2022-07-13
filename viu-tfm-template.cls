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

\usepackage[a4paper,margin=3cm,headheight=1.5cm,headsep=0.75cm,footskip=-0.75cm]{geometry}

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
\RequirePackage[export]{adjustbox} % frames in graphics
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
\renewcommand{\footrulewidth}{0pt}

\fancyhead{} % clear all header fields

\newcommand{\fakerule}[2]{
    % fake head/foot rule
    \node [fill=maincolor,anchor=#1 west,xshift=3cm,yshift=#2,minimum height=1pt,minimum width=15cm] at (current page.#1 west) {};
}

\newcommand{\drawhead}[2]{
    \begin{tikzpicture}[remember picture,overlay,inner sep=0pt]
        %fill=blue,
        \node [anchor=north #1, minimum height=3cm, minimum width=3cm] at (current page.north #1) {
            \includesvg[height=\headheight]{img/logoVIU-pildora.svg}
        };
        \node [anchor=north #1,xshift=#2,minimum height=3cm] at (current page.north #1) {
            \includesvg[height=0.666\headheight]{img/logoVIU-letras.svg}
        };
        \fakerule{north}{-2.25cm}
    \end{tikzpicture}
}

\fancyhead[LE]{
    \drawhead{west}{3cm}
}

\fancyhead[RO]{
    \drawhead{east}{-3cm}
}

\fancyfoot{} % clear all footer fields

\newcommand{\drawfooter}[3]{
    \begin{tikzpicture}[remember picture,overlay,inner sep=0pt]
        \node [anchor=south #1, minimum height=3cm, minimum width=3cm] at (current page.south #1) {
                \includesvg[height=1cm]{img/pildora_footer.svg}
            };
        \node [anchor=south #1, minimum height=3cm, minimum width=3cm] at (current page.south #1) {
                \color{white}\textbf{\thepage}
            };
        \node [anchor=south #1,xshift=#2,minimum height=3cm] at (current page.south #1) {
                \footnotesize\textit{#3}
            };
        \fakerule{south}{2.25cm}
    \end{tikzpicture}
}

\fancyfoot[LE]{
    \drawfooter{west}{3cm}{\titulacion}
}
\fancyfoot[RO]{
    \drawfooter{east}{-3cm}{\titulo}
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

\DefTblrTemplate{contfoot-text}{default}{}
\DefTblrTemplate{conthead-text}{default}{}
\DefTblrTemplate{caption}{default}{}
\DefTblrTemplate{conthead}{default}{}
\DefTblrTemplate{capcont}{default}{}


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

\NewTblrEnviron{requisitostbl}
%\SetTblrOuter[requisitostbl]{
%    long,
%    label=none,
%}
\SetTblrInner[requisitostbl]{
    hspan=minimal,
    measure=vbox,
    vlines={maincolor},
    vline{2,3,4,5}={1,2}{white},
    hlines={maincolor},
    hline{2}={0pt},
    row{1,2} = {
        bg=maincolor,
        fg=white,
        font=\bfseries,
        halign={c},
    },
    row{3}={
        halign={c},
        font=\bfseries,
    },
    cell{3,4,5,6}{1} = {c=5}{},
%    width=\linewidth
}

%--------------------------------------------------------------------------
% Lists
%--------------------------------------------------------------------------
\usepackage{enumitem}
%\setlist{itemsep=0pt,parsep=0pt,partopsep=0pt}
% ITEMIZE
\renewcommand{\labelitemi}{${\color{maincolor}\bullet}$}
\renewcommand{\labelitemii}{$\textcolor{maincolor}{\circ}$}
\renewcommand{\labelitemiii}{$\textcolor{maincolor}{\diamond}$}
\renewcommand{\labelitemiv}{$\textcolor{maincolor}{\triangleright}$}
% ENUMERATE
\setlist[enumerate]{font=\bfseries\color{maincolor}}


%--------------------------------------------------------------------------
% Programming CODE box
%--------------------------------------------------------------------------
\RequirePackage{tcolorbox}
\tcbuselibrary{raster,fitting,minted,many,listings,breakable}
\RequirePackage{fontawesome5}
\usemintedstyle{friendly}

\newtcblisting[auto counter,number within=section, list inside=mycommands]
{mycode}[3]{
    listing only,adjusted title={\faCode \hspace{10pt}#1}, listing engine=minted,minted language=#2,
    breakable=true,enhanced jigsaw,
    minted options={fontsize=#3},colback=white,colframe=maincolor,
    list entry={\protect\numberline{\thetcbcounter}#1}
}

\DeclareTotalTCBox{\inlineconsole}{ v }
{verbatim,colupper=white,colback=maincolor,colframe=black,enhanced}{\textbf{#1}}

\DeclareTotalTCBox{\commandbox}{ v }
{verbatim,colupper=white,colback=maincolor,colframe=black,enhanced}{\faTerminal\hspace{0pt}
  \textbf{#1}}

\DeclareTotalTCBox{\configfile}{ v }
{verbatim,colupper=white,colback=maincolor,colframe=black,enhanced}{\faFile\hspace{0pt}
  \textbf{#1}}

\DeclareTotalTCBox{\configdir}{ v }
{verbatim,colupper=white,colback=maincolor,colframe=black,enhanced}{\faFolderOpen\hspace{0pt}
  \textbf{#1}}

%--------------------------------------------------------------------------
% Bibliography
%--------------------------------------------------------------------------
%\usepackage[backend=biber,style=apa,natbib=true,sorting=nyt,url=false, isbn=false,doi=false]{biblatex}
\usepackage[backend=biber,style=apa6,citestyle=apa6]{biblatex}

\DefineBibliographyStrings{spanish}{%
    andothers = {et al\adddot},
}



%--------------------------------------------------------------------------
% Portada
%--------------------------------------------------------------------------
% portada separada en otro fichero: coverpage.tex
\input{\ClassPath/coverpage}