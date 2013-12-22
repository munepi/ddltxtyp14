%#!pdflatex ddltxtyp14
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{ddltxtyp}
%% based on book.cls 2007/10/19 v1.4h  Standard LaTeX document class
  [2013/12/15 v0.1  The Diary Dose of LaTeX Typography: Tribute Hommage to Typodarium]
%% fixes to LaTeX2e
\RequirePackage{fix-cm}[2006/09/13 v1.1m]
\RequirePackage{fixltx2e}[2006/09/13 v1.1m]

\RequirePackage[T1]{fontenc}\RequirePackage{textcomp}
\RequirePackage{graphicx}
\RequirePackage{color}

\pdfpkresolution=8000%1200,2400; %default: 600

\newif\if@xmasprt \@xmasprtfalse
\newif\if@hanmen \@hanmenfalse
\newif\if@tombow \@tombowfalse
\newif\if@tombowdate  \@tombowdatefalse
\newif\if@restonecol
\newif\if@openright
\newif\if@mainmatter \@mainmattertrue
\DeclareOption{a6paper}{%
  \setlength\paperheight{148mm}% 
  \setlength\paperwidth {105mm}% 
}
\DeclareOption{xmasprt}{\@xmasprttrue}
\DeclareOption{hanmen}{\@hanmentrue}
\DeclareOption{tombow}{\@tombowtrue \@tombowdatetrue}
\DeclareOption{tombo}{\@tombowtrue \@tombowdatefalse}
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\DeclareOption{openright}{\@openrighttrue}
\DeclareOption{openany}{\@openrightfalse}
\DeclareOption{onecolumn}{\@twocolumnfalse}
\DeclareOption{twocolumn}{\@twocolumntrue}
\ExecuteOptions{a6paper,twoside,onecolumn,final,openright}
\ProcessOptions

%% trim mark
\if@tombow
  \RequirePackage[cam,pdflatex,\if@tombowdate\else noinfo,\fi a5,center]{crop}[2003/05/20 v1.9]
\else
  \AtBeginDocument{%
    \setlength\pdfpageheight{\paperheight}%
    \setlength\pdfpagewidth{\paperwidth}%
  }%
\fi

\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xpt\@xiipt
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\newcommand\small{%
   \@setfontsize\small\@ixpt{11}%
   \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus2\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@viiipt{9.5}%
   \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\newcommand\large{\@setfontsize\large\@xiipt{14}}
\newcommand\Large{\@setfontsize\Large\@xivpt{18}}
\newcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\newcommand\huge{\@setfontsize\huge\@xxpt{25}}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}

\if@twocolumn
  \setlength\parindent{1em}
\else
  \setlength\parindent{15\p@}
\fi
\setlength\smallskipamount{3\p@ \@plus 1\p@ \@minus 1\p@}
\setlength\medskipamount{6\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\bigskipamount{12\p@ \@plus 4\p@ \@minus 4\p@}

\setlength\topskip   {10\p@}
\setlength\headheight{\z@}%default: 12\p@
\setlength\headsep   {\z@}%default: 25\p@
\setlength\footskip  {30\p@}%default: .35in
\setlength\maxdepth  {.5\topskip}

\setlength\textwidth{85mm}
\setlength\textheight{26\baselineskip}
\addtolength\textheight{-\baselineskip}\addtolength\textheight{\topskip}
\addtolength\textheight{.1\p@}

\setlength\marginparsep{\z@}
\setlength\marginparwidth{\z@}
\setlength\marginparpush{\z@}

\setlength\oddsidemargin\paperwidth
\addtolength\oddsidemargin{-\textwidth}
\setlength\oddsidemargin{.5\oddsidemargin}
\addtolength\oddsidemargin{-1in}
\setlength\evensidemargin\oddsidemargin

\setlength\topmargin\paperheight
\addtolength\topmargin{-\textheight}
\setlength\topmargin{.5\topmargin}
\addtolength\topmargin{-1in}
\addtolength\topmargin{-\headheight}\addtolength\topmargin{-\headsep}

\setlength\footnotesep{6.65\p@}
\setlength{\skip\footins}{9\p@ \@plus 4\p@ \@minus 2\p@}

\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}
\setlength\parskip{0\p@ \@plus \p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301

\if@hanmen
  \def\hanmen@TL{\llap{\smash{%
    \rule[-\headsep]{10mm}{.1\p@}\rule[-\headsep]{.1\p@}{10mm}}}}
  \def\hanmen@TR{\rlap{\smash{%
    \rule[-\headsep]{.1\p@}{10mm}\rule[-\headsep]{10mm}{.1\p@}}}}
  \def\hanmen@BL{\llap{\smash{%
    \raisebox{\footskip}{\rule{10mm}{.1\p@}\rule[-10mm]{.1\p@}{10mm}}}}}
  \def\hanmen@BR{\rlap{\smash{%
    \raisebox{\footskip}{\rule[-10mm]{.1\p@}{10mm}\rule{10mm}{.1\p@}}}}}
\else
  \let\hanmen@TL\relax \let\hanmen@TR\relax
  \let\hanmen@BL\relax \let\hanmen@BR\relax
\fi

\def\ps@empty{%
  \def\@oddhead{\hanmen@TL\hfil\hanmen@TR}%
  \def\@oddfoot{\hanmen@BL\hfil\hanmen@BR}%
  \let\@evenhead\@oddhead
  \let\@evenfoot\@oddfoot
}

\def\ddltxtyp@ps@banner{%
  \mbox{\footnotesize\usefont{T1}{SourceSansPro-LF}{m}{n}
    The Daily Dose of {\clone@LaTeX} Typography}}

\def\ps@footers{%
  \def\@oddhead{\hanmen@TL\hfil\hanmen@TR}%
  \def\@oddfoot{\hanmen@BL\hfil\hanmen@BR}%
  \let\@evenhead\@oddhead
  \def\@evenfoot{\hanmen@BL\hfil\ddltxtyp@ps@banner\hfil\hanmen@BR}%
}

\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}

\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}


\let\clone@LaTeX\LaTeX
\def\LaTeX{L\kern-.36em%
    {\sbox\z@ T%
     \vbox to\ht\z@{\hbox{\scalebox{.8}{\textrm A}}\vss}%
    }%
    \kern-.15em%
    \TeX}%
\def\XeTeX{X\kern-.125em\lower.5ex\hbox{\reflectbox{E}}\kern-.1667em%
  T\kern-.1667em\lower.5ex\hbox{E}\kern-.125emX\@}%
\def\XeLaTeX{X\kern-.125em\lower.5ex\hbox{\reflectbox{E}}\kern-.125em%
  \LaTeX}%
\def\pdfTeX{pdf\TeX}%
\def\pdfLaTeX{pdf\LaTeX}%
\def\LuaTeX{Lua\TeX}%
\def\LuaLaTeX{Lua\LaTeX}%


\newcounter{ddltxtyp@m}
\newcounter{ddltxtyp@d}
\newcounter{ddltxtyp@w}

%% set initial variables: 2014-01-01 Wed
\setcounter{ddltxtyp@m}{1}
\setcounter{ddltxtyp@d}{1}
\setcounter{ddltxtyp@w}{4}

\newenvironment{package}[3]{%
  \bgroup
    \font\textrm="#1" at 30\p@\textrm
    \hbox to \hsize{\hss\theddltxtyp@m\hss}\par
    \vfill
    \font\textrm="#1" at 210\p@\textrm
    \ifnum\c@ddltxtyp@w=\@ne\color{red}\fi
    \hbox to \hsize{\hss\the\c@ddltxtyp@d\hss}\par
    \vfill
    \font\textrm="#1" at 30\p@\textrm
    \hbox to \hsize{\hss\theddltxtyp@w\hss}\par
  \egroup
  \clearpage
  \bgroup
    \raggedright
    \font\textrm="#1" at \@xivpt\p@\textrm\relax
    #1/#2\par
    \vskip\baselineskip
    \font\textrm="#1" at \@viiipt\p@\textrm
    #3\par
    \vskip2\baselineskip
    \font\textrm="#1" at \@xpt\p@\textrm
}{%
  \egroup
  \clearpage
  %%
  \addtocounter{ddltxtyp@d}{1}%
  \ifnum\c@ddltxtyp@d=32%the prev d was 31
    \addtocounter{ddltxtyp@m}{1}\setcounter{ddltxtyp@d}{1}%
  \else\ifnum\c@ddltxtyp@m=\tw@\ifnum\c@ddltxtyp@d=29%the prev m/d was 2/28
    \addtocounter{ddltxtyp@m}{1}\setcounter{ddltxtyp@d}{1}%
    \if@xmasprt
      \mbox{}\clearpage\mbox{}\clearpage\mbox{}\clearpage
      \mbox{}\clearpage\mbox{}\clearpage\mbox{}\clearpage
    \fi
  \fi\else\ifnum\c@ddltxtyp@m=4\ifnum\c@ddltxtyp@d=31%4/30
    \addtocounter{ddltxtyp@m}{1}\setcounter{ddltxtyp@d}{1}%
    \if@xmasprt\mbox{}\clearpage\mbox{}\clearpage\fi
  \fi\else\ifnum\c@ddltxtyp@m=6\ifnum\c@ddltxtyp@d=31%6/30
    \addtocounter{ddltxtyp@m}{1}\setcounter{ddltxtyp@d}{1}%
    \if@xmasprt\mbox{}\clearpage\mbox{}\clearpage\fi
  \fi\else\ifnum\c@ddltxtyp@m=9\ifnum\c@ddltxtyp@d=31%9/30
    \addtocounter{ddltxtyp@m}{1}\setcounter{ddltxtyp@d}{1}%
    \if@xmasprt\mbox{}\clearpage\mbox{}\clearpage\fi
  \fi\else\ifnum\c@ddltxtyp@m=11\ifnum\c@ddltxtyp@d=31%11/30
    \addtocounter{ddltxtyp@m}{1}\setcounter{ddltxtyp@d}{1}%
    \if@xmasprt\mbox{}\clearpage\mbox{}\clearpage\fi
  \fi\fi\fi\fi\fi\fi\fi
  \addtocounter{ddltxtyp@w}{1}%
  \ifnum\c@ddltxtyp@w=8 \setcounter{ddltxtyp@w}{1}\fi
}

\def\theddltxtyp@m{\ddltxtyp@msymbol{ddltxtyp@m}}%
\def\ddltxtyp@msymbol#1{\@ddltxtyp@msymbol{\@nameuse{c@#1}}}
\def\@ddltxtyp@msymbol#1{\ifcase#1\or 
  January\or February\or March\or April\or May\or 
  June\or July\or August\or September\or October\or
  November\or December\or 
  Xxx\or Yyy\or Zzz\or Xxxxxx\or Yyyyyy\or Zzzzzz\else\@ctrerr\fi\relax}

\def\theddltxtyp@w{\ddltxtyp@wsymbol{ddltxtyp@w}}%
\def\ddltxtyp@wsymbol#1{\@ddltxtyp@wsymbol{\@nameuse{c@#1}}}
\def\@ddltxtyp@wsymbol#1{\ifcase#1\or 
  Sunday\or Monday\or Tuesday\or Wednesday\or Thursday\or 
  Friday\or Saturday\else\@ctrerr\fi\relax}


\tolerance\@M
\hbadness\@M
\emergencystretch 3em

\pagestyle{footers}
\pagenumbering{arabic}
\if@twoside
\else
  \raggedbottom
\fi
\if@twocolumn
  \twocolumn
  \sloppy
  \flushbottom
\else
  \onecolumn
\fi

\listfiles
\endinput
