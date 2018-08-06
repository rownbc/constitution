\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{constitution}

\LoadClass{report}

\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{paralist}
\RequirePackage{parano}





\titlecontents{report}[1.5em]{\bfseries}
  {\contentslabel{2.3em}}{\hspace*{-2.3em}}{\titlerule*[1pc]{.}\contentspage}

\makeatletter
\renewcommand{\paragraph}{\ttl@straightclass{paragraph}}
\@addtoreset{paragraph}{section}
\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\titleformat{\chapter}[display]
  {\normalfont\huge\bfseries}{\chaptertitlename\ \thechapter}{20pt}{\Huge}
\titleformat{\section}[block]
  {\normalfont\Large\bfseries}{ARTICLE \thesection ~ }{1em}{\filcenter\bfseries\MakeUppercase}
\titleformat{\subsection}[runin]
  {\normalfont\large\bfseries}{\arabic{section}.\thesubsection ~ }{1em}{}
\titleformat{\subsubsection}[runin]
  {\normalfont\normalsize\bfseries}{\thesubsubsection}{1em}{}
\titleformat{\paragraph}[runin]
  {\normalfont\normalsize\bfseries}{\theparagraph}{1em}{}
\titleformat{\subparagraph}[runin]
  {\normalfont\normalsize\bfseries}{\thesubparagraph}{1em}{}

\titlespacing*{\chapter} {0pt}{50pt}{40pt}
\titlespacing*{\section} {0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
\titlespacing*{\subsection} {0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
\titlespacing*{\subsubsection}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
\titlespacing*{\paragraph} {0pt}{3.25ex plus 1ex minus .2ex}{1em}
\titlespacing*{\subparagraph} {\parindent}{3.25ex plus 1ex minus .2ex}{1em}

\renewcommand{\thesection}{\Roman{section}} 
\renewcommand{\thesubsection}{\arabic{subsection}}
\renewcommand{\thesubsubsection}{\arabic{subsubsection}}
\renewcommand{\theparagraph}{\arabic{paragraph}}
\renewcommand{\theenumi}{\alph{enumi}}
\renewcommand{\theenumii}{\roman{enumi}.\roman{enumii}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Convert arabic number to roman number
\newcommand{\Romannum}[1]{%
    \MakeUppercase{%
        \ifnum#1<1
        \ifnum#1=0
        o%
        \else
            -\romannumeral -#1%
        \fi
        \else
        \romannumeral #1%
        \fi}}

% Fragment number
\newcounter{frammento}
\newcommand{\framm}{%
    \stepcounter{frammento}%
    \centering\Romannum\theframmento
    }

% Environment for fragments
\newenvironment{frammpar}{%
    \smallskip
    \def\par{%
        \vspace{1em}%
        \pdfprimitive\par\framm%
        \pdfprimitive\par\centering%
        }%

    }%
    {%
        %\newline%
        \pdfprimitive\par
    }
