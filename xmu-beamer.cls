%%
%% This is file `xmu-beamer.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% xmu-beamer.dtx  (with options: `class')
%% 
%% IMPORTANT NOTICE:
%% 
%% For the copyright see the source file.
%% 
%% Any modified versions of this file must be renamed
%% with new filenames distinct from xmu-beamer.cls.
%% 
%% For distribution of the original source see the terms
%% for copying and modification in the file xmu-beamer.dtx.
%% 
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{xmu-beamer}[2026/05/12 XMU beamer presentation class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax
\LoadClass[aspectratio=169,xcolor=dvipsnames,t]{beamer}

\RequirePackage{fontspec}
\RequirePackage{xeCJK}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{svg}
\RequirePackage{tikz}
\RequirePackage{makecell}
\RequirePackage{wrapfig}
\RequirePackage{subfig}
\RequirePackage{multirow}
\RequirePackage{ragged2e}
\RequirePackage{subcaption}
\RequirePackage{colortbl}
\RequirePackage{amsmath}
\RequirePackage{pifont}
\RequirePackage{listings}
\RequirePackage[backend=bibtex,style=numeric]{biblatex}

\mode<presentation>
\usetheme{Madrid}
\useinnertheme{circles}
\usefonttheme{professionalfonts}
\mode<all>

\newcommand{\xmu@setfont}[3]{%
  \IfFontExistsTF{#1}{#3{#1}}{#3{#2}}%
}

\xmu@setfont{Times New Roman}{Latin Modern Roman}{\setmainfont}
\xmu@setfont{Arial}{Latin Modern Sans}{\setsansfont}
\xmu@setfont{JetBrains Mono}{Latin Modern Mono}{\setmonofont}

\setCJKmainfont{Songti SC}
\setCJKsansfont{Heiti SC}
\setCJKmonofont{KaiTi}

\definecolor{VeryPaleOrange}{rgb}{1,0.933,0.867}
\definecolor{LightGrayishBlue}{rgb}{0.929,0.914,1}
\definecolor{Solitude}{rgb}{0.953,0.965,0.976}
\definecolor{NeonCarrot}{rgb}{1,0.49,0.192}
\definecolor{Astronaut}{rgb}{0.243,0.318,0.416}
\definecolor{PrussianBlue}{rgb}{0,0.19,0.33}
\definecolor{shadecolor}{rgb}{0.929,0.914,1}
\definecolor{ignorecolor}{rgb}{0.875,0.875,0.75}

\usecolortheme[named=PrussianBlue]{structure}
\setbeamercolor{titlelike}{parent=structure}
\setbeamercolor{block title}{bg=PrussianBlue,fg=white}
\setbeamercolor{block body}{bg=LightGrayishBlue,fg=black}
\setbeamercolor{block title example}{bg=Astronaut,fg=white}
\setbeamercolor{block body example}{bg=Solitude,fg=black}
\setbeamercolor{block title alerted}{bg=NeonCarrot,fg=white}
\setbeamercolor{block body alerted}{bg=VeryPaleOrange,fg=black}
\setbeamercolor{alerted text}{fg=NeonCarrot}
\setbeamercolor{column heading}{fg=PrussianBlue}
\setbeamercolor{background canvas}{bg=Solitude}
\setbeamercolor{footlinecolor}{fg=PrussianBlue}
\setbeamercolor{title}{fg=Solitude}
\setbeamercolor{subtitle}{fg=Solitude}
\setbeamercolor{author}{fg=Solitude}
\setbeamercolor{institute}{fg=Solitude}
\setbeamercolor{date}{fg=Solitude}
\setbeamercolor{sectionDivider}{fg=Solitude}

\setbeamerfont{normal text}{family=\rmfamily,size=\normalsize,series=\mdseries}
\setbeamerfont{title}{family=\sffamily,size=\LARGE,series=\bfseries}
\setbeamerfont{subtitle}{family=\sffamily,size=\large,series=\mdseries}
\setbeamerfont{author}{family=\rmfamily,size=\Large,series=\mdseries}
\setbeamerfont{institute}{family=\rmfamily,size=\normalsize,series=\mdseries}
\setbeamerfont{date}{family=\rmfamily,size=\normalsize,series=\mdseries}
\setbeamerfont{frametitle}{family=\sffamily,size=\LARGE,series=\bfseries}
\setbeamerfont{framesubtitle}{family=\sffamily,size=\normalsize,series=\mdseries}
\setbeamerfont{section in toc}{family=\sffamily,size=\large,series=\bfseries}
\setbeamerfont{subsection in toc}{family=\sffamily,size=\small,series=\mdseries}
\setbeamerfont{section in head/foot}{family=\rmfamily,size=\scriptsize,series=\mdseries}
\setbeamerfont{item}{parent=normal text}
\setbeamerfont{caption}{family=\sffamily,size=\footnotesize}
\setbeamerfont{caption name}{family=\sffamily,size=\footnotesize,series=\bfseries}
\setbeamerfont{block title}{family=\sffamily,size=\normalsize,series=\bfseries}
\setbeamerfont{block body}{parent=normal text}
\setbeamerfont{bibliography item}{family=\sffamily,size=\footnotesize}
\setbeamerfont{bibliography entry author}{family=\rmfamily,size=\footnotesize}
\setbeamerfont{bibliography entry title}{family=\rmfamily,size=\footnotesize}
\setbeamerfont{bibliography entry location}{family=\rmfamily,size=\footnotesize}
\setbeamerfont{bibliography entry note}{family=\rmfamily,size=\footnotesize}

\pgfdeclareverticalshading[lower.bg,upper.bg]{bmb@transition}{200cm}{%
  color(0pt)=(lower.bg); color(2pt)=(lower.bg); color(4pt)=(lower.bg)}
\setbeamersize{text margin left=1em,text margin right=1em}
\setbeamertemplate{section in toc}[sections numbered]
\setbeamertemplate{subsection in toc}{%
  \leavevmode\leftskip=3.2em%
  \rlap{\hskip-2em\inserttocsectionnumber.\inserttocsubsectionnumber}%
  \inserttocsubsection\par}
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{blocks}[default]
\setbeamertemplate{enumerate items}[default]
\setbeamertemplate{date}[default]
\setbeamertemplate{caption}[numbered]
\setbeamertemplate{caption label separator}{: }
\setbeamertemplate{bibliography item}{[\printfield{labelnumber}]}
\renewcommand{\figurename}{Fig}
\renewcommand{\tablename}{Tab}

\newif\ifxmubeamerdebuglayout
\xmubeamerdebuglayoutfalse
\newcommand{\xmubeamerdebugbox}[2][NeonCarrot]{%
  \ifxmubeamerdebuglayout
    {\setlength{\fboxsep}{0pt}%
     \setlength{\fboxrule}{0.4pt}%
     \color{#1}\fbox{#2}}%
  \else
    #2%
  \fi
}

\setbeamertemplate{frametitle}{%
  \insertframetitle
  \hfill
  \logo{%
    \begin{tikzpicture}[overlay,remember picture]
      \node[left=2.1em,below=0em] at (current page.north east){%
        \includegraphics[width=4em]{xmulogo/xmu-zi-jiageng blue.pdf}%
      };
    \end{tikzpicture}%
  }%
  {\usebeamercolor[fg]{titlegraphic}\insertlogo\par}%
  \vspace*{-8pt}%
}

\setbeamertemplate{footline}{%
  \begin{beamercolorbox}[sep=1em,wd=\paperwidth,leftskip=1em,rightskip=1em]{footlinecolor}
    {\usebeamerfont{section in head/foot}\insertshortinstitute}
    \hfill
    {\usebeamerfont{section in head/foot}\insertframenumber/\inserttotalframenumber}
  \end{beamercolorbox}
}

\setbeamertemplate{column_heading}{%
  \begin{beamercolorbox}[sep=8pt,left]{column heading}
    \usebeamerfont{title}
  \end{beamercolorbox}%
}

\setbeamertemplate{title page}{%
  \titlegraphic{%
    \begin{tikzpicture}[overlay,remember picture]
      \node[anchor=north west,outer xsep=0.7em,outer ysep=1em] at (current page.north west){%
        \includegraphics[width=5cm]{xmulogo/xmu-zi-jiageng white.pdf}%
      };
    \end{tikzpicture}%
  }%
  \usebeamercolor[fg]{titlegraphic}\inserttitlegraphic\par

  \vbox to 0.95\paperheight{%
    \vspace*{6em}
    \xmubeamerdebugbox[NeonCarrot]{%
      \begin{beamercolorbox}[left,wd=0.8\linewidth]{title}
        \usebeamerfont{title}\inserttitle\par
        \ifx\insertsubtitle\@empty
        \else
          \vskip0.45em
          {\usebeamerfont{subtitle}\usebeamercolor[fg]{subtitle}\insertsubtitle\par}
        \fi
      \end{beamercolorbox}%
    }
    \vfill
    \xmubeamerdebugbox[Cerulean]{%
      \begin{beamercolorbox}[left,wd=0.5\linewidth]{author}
        \usebeamerfont{author}\insertauthor
      \end{beamercolorbox}%
    }
    \vfill
    \xmubeamerdebugbox[YellowGreen]{%
      \begin{beamercolorbox}[wd=0.8\linewidth]{institute}
        \usebeamerfont{institute}\insertinstitute
        \hfill
        \usebeamerfont{date}\insertdate
      \end{beamercolorbox}%
    }
    \vspace*{0pt}
  }%
}

\setbeamertemplate{section divider}{%
  \logo{%
    \begin{tikzpicture}[overlay,remember picture]
      \node[anchor=north west,outer xsep=0.7em,outer ysep=1em] at (current page.north west){%
        \includegraphics[width=5cm]{xmulogo/xmu-zi-jiageng white.pdf}%
      };
    \end{tikzpicture}%
  }%
  {\usebeamercolor[fg]{titlegraphic}\insertlogo\par}

  \vbox to 0.95\paperheight{%
  \vspace*{11em}
  \xmubeamerdebugbox[NeonCarrot]{%
    \begin{beamercolorbox}[left,wd=0.8\linewidth]{sectionDivider}
      \usebeamerfont{frametitle}\insertsectionhead\par
    \end{beamercolorbox}}
  \gradientline\par
  \vfill
  \setbeamercolor{footlinecolor}{fg=white}
  \xmubeamerdebugbox[Cerulean]{%
    \begin{beamercolorbox}[wd=0.8\linewidth]{footlinecolor}
      {\usebeamerfont{section in head/foot}\insertshortinstitute}
    \end{beamercolorbox}}
  }
}

\setbeamertemplate{endpage}{%
  \titlegraphic{%
    \begin{tikzpicture}[overlay,remember picture]
      \node[anchor=north west,outer xsep=0.7em,outer ysep=1em] at (current page.north west){%
        \includegraphics[width=5cm]{xmulogo/xmu-zi-jiageng white.pdf}%
      };
    \end{tikzpicture}%
  }%
  {\usebeamercolor[fg]{titlegraphic}\inserttitlegraphic\par}

  \vbox to 0.95\paperheight{
    \vspace*{8em}
    \xmubeamerdebugbox[NeonCarrot]{%
      \begin{beamercolorbox}[left,wd=0.8\linewidth]{title}
        \usebeamerfont{title}\finalpage\par
      \end{beamercolorbox}
    }
    \vfill
    \xmubeamerdebugbox[Cerulean]{%
      \begin{beamercolorbox}[left,wd=0.8\linewidth]{author}
        \usebeamerfont{author}\insertauthor
      \end{beamercolorbox}
    }
    \vfill
    \xmubeamerdebugbox[YellowGreen]{%
      \begin{beamercolorbox}[wd=0.8\linewidth]{institute}
        \usebeamerfont{institute}\insertinstitute
        \hfill
        \usebeamerfont{date}\insertdate
      \end{beamercolorbox}
    }
    \vspace*{0pt}
  }
}

\newcommand{\gradientline}{\noindent
  \begin{tikzpicture}
    \node[rectangle,left color=PrussianBlue,right color=Solitude,middle color=PrussianBlue,
      anchor=north,minimum width=0.8\linewidth,inner sep=0pt,minimum height=1.5pt]
      at (current page.north){};
  \end{tikzpicture}%
}

\newcommand{\makesection}[1]{%
  {%
    \usebackgroundtemplate{\includegraphics[width=\paperwidth]{xmulogo/section bg.pdf}}%
    \begin{frame}[plain,noframenumbering]
      \section{#1}
      \usebeamertemplate{section divider}
    \end{frame}%
  }%
}

\newcommand{\finalpage}{}
\newcommand{\finalpagetext}[1]{\renewcommand{\finalpage}{#1}}
\newcommand{\makefinalpage}{%
  {%
    \usebackgroundtemplate{\includegraphics[width=\paperwidth]{xmulogo/section bg.pdf}}%
    \begin{frame}[plain]
      \usebeamertemplate{endpage}
    \end{frame}%
  }%
}

\newcommand{\maketitlepage}{%
  {%
    \usebackgroundtemplate{\includegraphics[width=\paperwidth]{xmulogo/section bg.pdf}}%
    \begin{frame}[plain]
      \titlepage
    \end{frame}%
  }%
}

\newcommand{\colheader}[1]{\textcolor{PrussianBlue}{\textbf{#1}}\par}
\newcommand{\xmark}{\textcolor[HTML]{e74c3c}{\ding{55}}}
\newcommand{\cmark}{\textcolor{teal}{\textbf{\ding{51}}}}
\newcommand{\etal}{\textit{et al}.}
\newcommand{\ie}{\textit{i}.\textit{e}.}
\newcommand{\eg}{\textit{e}.\textit{g}.}
\newcommand{\etc}{\textit{etc.}}
\newcommand{\vs}{\textit{vs}.}
\newcommand{\highlight}[1]{\cellcolor{shadecolor}#1}
\newcommand{\red}[1]{\textcolor{red}{#1}}

\AtBeginDocument{\usebeamerfont{normal text}}
\endinput
%%
%% End of file `xmu-beamer.cls'.
