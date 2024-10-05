\makeatletter
%---------------------------------------------------------------------------
%Please  be  aware that the use of this LaTeX class file is governed by the
%following conditions:
%
% based on the original LaTeX ARTICLE DOCUMENT STYLE
% Copyright (C) 1988, 1989 by Leslie Lamport
%
% Rules of Use
%
% You are NOT ALLOWED to change this file.
%
%This class file is made available for use by authors who wish to prepare an
%article for publication in the Journals  
%published by Oxford University Press Ltd.  The user may not exploit any part of
%the class file commercially.
%
%This class file is provided on an `as is'  basis, without warranties of any
%kind, either expressed or implied, including but not limited to warranties of
%title,   or  implied  warranties  of  merchantablility  or  fitness  for  a
%particular purpose.  There will be no duty on the author[s] of the software
%or  Oxford University Press Ltd to correct any errors or defects in the software.
%Any  statutory  rights you may have remain unaffected by your acceptance of
%these rules of use.
%---------------------------------------------------------------------------
%

\def\update{2007/02/05 v1.00}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{oupau}[\update\ Oxford University Press]

\newif\if@timesfont
\DeclareOption{times}{%
\@timesfonttrue}

\if@timesfont
\RequirePackage{times}
\fi

\newif\if@doublespace
\DeclareOption{doublespace}{%
\@doublespacetrue}

\newif\if@openbib
\@openbibfalse

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass{article}
\if@doublespace
\RequirePackage{setspace}
\doublespacing
\fi

\RequirePackage{graphicx}
\RequirePackage{pifont,latexsym,ifthen,amsthm,rotating,calc,textcase,booktabs}
\RequirePackage{amsfonts,amssymb,amsbsy,amsmath}
\RequirePackage[errorshow]{tracefnt}

\@twosidetrue
\flushbottom
\frenchspacing
\textwidth 170.5mm
\textheight 249mm
\columnwidth 83.25mm

%Trim sizes
\setlength\voffset{-1in}
\setlength\hoffset{-1in}
\topmargin 10mm
\setlength\oddsidemargin{18mm}%back margin on odd pages
\setlength\evensidemargin{21.5mm}%fore margin on even pages
\setlength\paperwidth{210mm}
\setlength\paperheight{297mm}
%Needed to set PDF page size
\special{papersize=210mm,297mm}

\parindent 2em
\headsep 18pt
\headheight 12pt
\footskip 26pt

\brokenpenalty=10000%
\clubpenalty=9999%
\widowpenalty=9999%
\finalhyphendemerits=14000%
\doublehyphendemerits=75000%
\lefthyphenmin=3%
\righthyphenmin=3%
\pretolerance=1000%
\tolerance=2000%
\hfuzz=0.99pt%
\hbadness=8000
\vbadness=9000

\thinmuskip = 3mu
\medmuskip = 4mu
\thickmuskip = 5mu

%\setcounter{topnumber}{5}
%\def\topfraction{1}
%\setcounter{bottomnumber}{5}
%\def\bottomfraction{.8}
%\setcounter{totalnumber}{10}
%\def\textfraction{0}
%\renewcommand{\floatpagefraction}{0.95}
%\renewcommand{\dblfloatpagefraction}{0.95}
%\renewcommand{\dbltopfraction}{1}

\setcounter{topnumber}{2}
\def\topfraction{0.7}
\setcounter{bottomnumber}{2}
\def\bottomfraction{0.3}
\setcounter{totalnumber}{3}
\def\textfraction{0.2}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{0.75}
\renewcommand{\dbltopfraction}{0.7}


\renewcommand\normalsize{%
\fontsize{10.3}{12pt plus 0.10pt minus 0.10pt}\selectfont%
   %\@setfontsize\normalsize\@xipt{12pt plus 0.10pt minus 0.10pt}%
   \abovedisplayskip 11\p@ \@plus3\p@ \@minus6\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\renewcommand\small{%
\fontsize{9.3}{10pt plus 0.10pt minus 0.10pt}\selectfont%
   %\@setfontsize\small\@xpt{11pt plus 0.10pt minus 0.10pt}
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 6\p@ \@plus2\p@ \@minus2\p@
               \parsep 3\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\renewcommand\footnotesize{%
\fontsize{8.3}{9}\selectfont%
   %\@setfontsize\footnotesize\@viiipt{9}%
   \abovedisplayskip 8\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\renewcommand{\scriptsize}{\fontsize{7.3}{8.5pt}\selectfont}
\renewcommand\tiny{\@setfontsize\tiny\@vipt\@viipt}
\renewcommand\large{\@setfontsize\large\@xiipt{14}}
\renewcommand\Large{\@setfontsize\Large\@xivpt{18}}
\renewcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\renewcommand\huge{\@setfontsize\huge\@xxpt{25}}
\renewcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}

\newcommand{\tabsize}{\fontsize{8.8}{10.5pt}\selectfont}
\newcommand{\addresssize}{\fontsize{8.3}{10pt}\selectfont}
\newcommand{\titlesize}{\fontsize{18.3}{20pt}\selectfont}

%\def\journalname{OXFORD UNIVERSITY PRESS LTD JOURNAL}
%\def\journalabb{OUP Journal}

\def\address#1{\gdef\@address{#1}}

\newbox\absbox
\def\abstract{\lrbox\absbox
  \tabsize\normalfont
  \noindent\textbf{Abstract:}}

\def\endabstract{\endlrbox \par\noindent\unhbox\absbox}
%\def\endabstract{\endlrbox}

\def\keywords#1{%
  \gdef\@keywords{%
    KEY WORDS\hspace*{1.75em}\ignorespaces#1}}
\let\@keywords\@empty

\def\received#1{%
\gdef\@received{Received #1}}
\newcommand\revised[2][Revised]{%
\g@addto@macro\@revised{{; #1 #2}}}
\let\@revised\@empty
\newcommand\accepted[2][Accepted]{%
\g@addto@macro\@accepted{{; #1 #2}}}
\let\@accepted\@empty

\setlength{\skip\footins}{17pt}
\renewcommand{\footnoterule}{\rule{0pc}{0pt}}

\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\long\def\@makefntext#1{\parindent 1em%
\noindent{$\m@th^{\@thefnmark}$}#1}

\def\corraddr#1{%
  \gdef\@corraddr{%
    \footnotetext[1]{Correspondence to: #1}\stepcounter{footnote}}}
\let\@corraddr\@empty
\def\corrauth{\footnotemark[1]}

\def\affilnum#1{${}^{\text{\normalfont#1}}$}
\def\affil#1{${}^{\text{\normalfont#1}}$}
\def\comma{$^{\text{,}}$}

\renewcommand\maketitle{\par
  \begingroup
     \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
       \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{title}\label{FirstPage}\@corraddr
  \endgroup
  %\setcounter{footnote}{0}%
  \global\let\address\relax
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\@address\@empty
  \global\let\corraddr\relax
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\@maketitle{%
  \null
  \if@doublespace
\vskip 30pt
\else  
  \vskip 15pt %
\fi
%\rule{\textwidth}{0.5pt}
  \begin{flushleft}%
    {\titlesize\bf \@title \par}%
    \vskip 1.75em%
    {\large
      \lineskip .5em%
      %
        \@author
      \par}%
      \vskip 2pt
 {\addresssize
      \lineskip .5em%
      %
        {\emph\@address}
      \par}% 
    \vskip 6pt
% \rule{\textwidth}{0.5pt}    
    \vskip 18pt%
    \noindent{\unhbox\absbox\par}
    %{\unhbox\absbox\par}
  \end{center}%
   {\lineskip .5em%
      %
        \hspace*{0.025\textwidth}{\scriptsize\@keywords}
      \par}
  \vskip 4pt
  {\lineskip .5em%
      %
        \hspace*{0.025\textwidth}{\scriptsize\emph{\@received\@revised\@accepted}}
      \par}\par
  \vskip 1.75em}
 
\def\startpage{\pageref{FirstPage}}
\def\endpage{\pageref{LastPage}}
\def\volumeyear{0000}
\def\volumenumber{00}
\def\DOI{XXX000}

\gdef\copyrightline{Copyright \copyright\ \volumeyear\ Oxford University Press}
\def\runningheads#1#2{\markboth{\MakeTextUppercase{#1}}{\MakeTextUppercase{#2}}}

\def\ps@title{%
\def\@oddhead{\setlength{\fboxsep}{0pt}%
%\begin{tabular}[b]{@{}l@{}}%
%{\footnotesize{\journalname}\ \textbf{\volumenumber}\ (\volumeyear),\ \startpage--\endpage}\\[-3pt]
%{\footnotesize doi:10.1093/{\journalabb}/{\DOI}}
%\end{tabular}\hss\hfill}%
\let\@evenhead\@oddhead
\def\@oddfoot{\parbox[t]{10cm}{%
{\normalsize\copyrightline\\
\textit{Prepared using \textsf{oupau.cls} [Version: \update]}}%
}\hfill}%
\let\@evenfoot\@oddfoot}

\def\ps@oupau{%
\def\@evenhead{{\tabsize\thepage\hfill\leftmark\hfill\phantom{\thepage}}}
\def\@oddhead{{\tabsize\phantom{\thepage}\hfill\rightmark\hfill\thepage}}
\let\@evenfoot\@empty%
\let\@oddfoot\@empty}%

\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-19pt \@plus -6pt \@minus -2pt}%
                                   {8pt \@plus3pt \@minus2pt}%
                                   {\normalfont\normalsize\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-16pt \@plus -6pt \@minus -4pt}%
                                     {6pt \@plus2pt \@minus 2pt}%
                                     {\normalfont\normalsize}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-16pt \@plus -6pt \@minus -4pt}%
                                     {6pt \@plus2pt \@minus 2pt}%
                                     {\normalfont\normalsize\itshape}}

\def\enumerate{\ifnum \@enumdepth >3 \@toodeep\else
      \advance\@enumdepth \@ne
      \edef\@enumctr{enum\romannumeral\the\@enumdepth}\list
      {\csname label\@enumctr\endcsname}{\usecounter
        {\@enumctr}\itemsep 0pt\parsep 0pt
         \def\makelabel##1{\hss\llap{##1}}}\fi}

\let\endenumerate =\endlist

\def\itemize{\ifnum \@itemdepth >3 \@toodeep\else \advance\@itemdepth \@ne
\edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
\list{\csname\@itemitem\endcsname}{\itemsep 0pt\parsep 0pt
\def\makelabel##1{\hss\llap{##1}}}\fi}

\let\enditemize =\endlist

%\usepackage[tableposition=top]{caption}
%\DeclareCaptionFont{tabsize}{\tabsize}
%\DeclareCaptionLabelSeparator{oupperiod}{.\hspace*{1ex}}
%\captionsetup{font=tabsize,labelsep=oupperiod,justification=centerlast}

\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{example}[theorem]{Example}
\newtheorem{exercise}[theorem]{Exercise}
\renewenvironment{proof}{\par\medbreak
 \textit{Proof.}\hskip.5em\ignorespaces}{\medbreak}

\newcommand\ack{\section*{Acknowledgement}}
\newcommand\acks{\section*{Acknowledgements}}

%\renewenvironment{thebibliography}{%
%\section*{\refname}
%\list{\@biblabel {\theenumiv }}{\topsep=0\p@\parsep=0\p@
%\partopsep=0\p@\itemsep=1\p@\labelsep=0\p@\itemindent=-8\p@
%\labelwidth=0\p@\leftmargin=8\p@
%}\footnotesize\rm
%\def\newblock{\ }
%\sloppy\clubpenalty4000\widowpenalty4000
%\sfcode`\.=1000\relax}{\endlist}

\renewenvironment{thebibliography}[1]
     {\section*{\refname
        \@mkboth{\uppercase{\refname}}{\uppercase{\refname}}}%
      \list{\@biblabel{\arabic{enumiv}}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \if@openbib
              \advance\leftmargin\bibindent
              \itemindent -\bibindent
              \listparindent \itemindent
              \parsep \z@
            \fi
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand{\theenumiv}{\arabic{enumiv}}}%maketitle
      \if@openbib
        \renewcommand{\newblock}{\par}
      \else
        \renewcommand{\newblock}{\hskip .11em \@plus.33em \@minus.07em}%
      \fi
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.=\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}

\AtEndDocument{%
\label{LastPage}}

\newcommand\etal{\emph{et~al.}}

\pagestyle{oupau}
\normalsize
\sloppy
\makeatother