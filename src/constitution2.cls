\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{constitution}

%% Article options
\DeclareOption{letterpaper}{\PassOptionsToClass{\CurrentOption}{article}}
\DeclareOption{11pt}{\PassOptionsToClass{\CurrentOption}{article}}

%% Fallback
\DeclareOption*{\ClassWarning{constitution}{Unknown option '\CurrentOption'}}

%% Process given options
\ProcessOptions\relax

\LoadClass{report}

\RequirePackage[letterpaper, margin=1in]{geometry}
\RequirePackage{tocloft}
\RequirePackage{hyperref}
\RequirePackage{sectsty}
\RequirePackage{textcase}
\RequirePackage{titlesec}
\RequirePackage{titletoc}

\setcounter{secnumdepth}{5}
\setcounter{tocdepth}{5}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\renewcommand{\cftfigpresnum}{Article\ }

\newcommand{\sectionlabel}       {\thesection} 
\newcommand{\subsectionlabel}    {\thesubsection}
\newcommand{\subsubsectionlabel} {\thesubsubsection}
\newcommand{\paragraphlabel}     {\theparagraph}
\newcommand{\subparagraphlabel}  {\thesubparagraph}

\renewcommand{\thesection}       {\Roman{section}} 
\renewcommand{\thesubsection}    {\arabic{section}.\arabic{subsection}}
\renewcommand{\thesubsubsection} {(\alph{subsubsection})}
\renewcommand{\theparagraph}     {(\roman{paragraph})}
\renewcommand{\thesubparagraph}  {(\Alph{subparagraph})}

\renewcommand{\theenumi}   {\alph{enumi}}
\renewcommand{\theenumii}  {\roman{enumi}}
\renewcommand{\theenumiii} {\Alph{enumiii}}
\renewcommand{\theenumiv}  {\Roman{enumiv}}

\renewcommand{\labelenumi}   {(\theenumi)}
\renewcommand{\labelenumii}  {(\theenumii)}
\renewcommand{\labelenumiii} {(\theenumiii)}
\renewcommand{\labelenumiv}  {(\theenumiv)}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\titleformat{\chapter}[display]
  {\normalfont\huge\bfseries}{\chaptertitlename\ \thechapter}{20pt}{\Huge}
\titleformat{\section}[block]
  {\normalfont\Large\bfseries}{ARTICLE \thesection}{1em}{\filcenter\bfseries\MakeUppercase}
\titleformat{\subsection}[hang]
  {\normalfont\large\bfseries}{\arabic{section}.\thesubsection}{1em}{}
\titleformat{\subsubsection}[hang]
  {\normalfont\normalsize\bfseries}{\thesubsubsection}{1em}{}
\titleformat{\paragraph}[hang]
  {\normalfont\normalsize\bfseries}{\theparagraph}{1em}{}
\titleformat{\subparagraph}[hang]
  {\normalfont\normalsize\bfseries}{\thesubparagraph}{1em}{}

\titlespacing{\chapter} {0pt}{50pt}{40pt}
\titlespacing{\section} {0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
\titlespacing{\subsection} {0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
\titlespacing{\subsubsection}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
\titlespacing{\paragraph} {3ex}{3.25ex plus 1ex minus .2ex}{1em}
\titlespacing{\subparagraph} {\parindent}{3.25ex plus 1ex minus .2ex}{1em}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\makeatletter

%\renewcommand\section{\@startsection{section}{1}{\z@}{12ex}{8ex}
%  {\centering\Large\bfseries ARTICLE\ \MakeUppercase}}
%\renewcommand\subsection{\@startsection{subsection}{2}{\z@}{-1em}{-1em}%
%  {\normalfont\it\bfseries}}
%\renewcommand\subsubsection{\@startsection{subsubsection}{3}{1em}{-0em}{-0em}{}}
%\renewcommand\paragraph{\@startsection{paragraph}{4}{1em}{-0em}{-0em}{}}
%\renewcommand\subparagraph{\@startsection{subparagraph}{5}{1em}{-0em}{-0em}{}}

%\newcommand{\notocsection}[1]{% 
%  \refstepcounter{section}% 
%  \section*{\thesection \quad #1}}% 

\newcommand\frontmatter{%
    \cleardoublepage
  %\@mainmatterfalse
  \pagenumbering{roman}}

\newcommand\mainmatter{%
    \cleardoublepage
 % \@mainmattertrue
  \pagenumbering{arabic}}

\newcommand\backmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
 % \@mainmatterfalse
   }

\makeatother
