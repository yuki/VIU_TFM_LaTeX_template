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

\sloppy % evita cortar palabras





%--------------------------------------------------------------------------
% Graphics and Color definitions
%--------------------------------------------------------------------------
\RequirePackage{graphicx}
\RequirePackage{svg} % for svg images

\RequirePackage{tcolorbox}
\tcbuselibrary{raster,fitting,minted,many,listings,breakable,skins}
\usetikzlibrary{decorations.pathmorphing}


\RequirePackage{xcolor}
\definecolor{viu-color}{HTML}{e65218}


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