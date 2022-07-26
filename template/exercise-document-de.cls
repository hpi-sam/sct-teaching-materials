\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exercise-document}[2022/07/26, Christian Zöllner @HPI System Analysis and Modeling Group]


%% %% %%%%%%%%%%%%%%%%%%%%%%%%%%% %% %%
%% %%     ENSURE UTF8 UNICODE     %% %%
%% %% %%%%%%%%%%%%%%%%%%%%%%%%%%% %% %%
\RequirePackage[utf8]{inputenc}


%% %% %%%%%%%%%%%%%%%%%%%%%%%%%%% %% %%
%% %%     LOAD DOCUMENT CLASS     %% %%
%% %% %%%%%%%%%%%%%%%%%%%%%%%%%%% %% %%
\LoadClass[a4paper,oneside,DIV=12]{scrartcl}


%% %% %%%%%%%%%%%%%%%%%%%%%%%% %% %%
%% %%     INCLUDE PACKAGES     %% %%
%% %% %%%%%%%%%%%%%%%%%%%%%%%% %% %%
\usepackage[ngerman]{babel}
\usepackage[T1]{fontenc}
\usepackage{graphicx}
\usepackage{subcaption}
\usepackage{color}
\usepackage{svg}
\usepackage{xcolor}
\usepackage{xspace}
\usepackage{framed}
\usepackage{lastpage}
\usepackage[headsepline]{scrlayer-scrpage}
\usepackage{amssymb}
\usepackage{amsmath}
\usepackage[normalem]{ulem}
\usepackage{lmodern}
\usepackage[breakable,skins]{tcolorbox}
\usepackage[shortlabels,inline]{enumitem}
\usepackage{eurosym}
\usepackage{xifthen}
\usepackage{csquotes}
\usepackage{multicol}
\usepackage{hyperref}
\usepackage{rotating}
\usepackage{mwe}
\usepackage{ifthen}



%% %% %%%%%%%%%%%%%%%%%%%%%% %% %%
%% %%     SET SUBFOLDERS     %% %%
%% %% %%%%%%%%%%%%%%%%%%%%%% %% %%
\graphicspath{{./}{img/}{../../../template/}}


%% %% %%%%%%%%%%%%%%%%%%%%% %% %%
%% %%     DEFINE COLORS     %% %%
%% %% %%%%%%%%%%%%%%%%%%%%% %% %%
\definecolor{mygray}{rgb}{0.376,0.408,0.420}		%100
\colorlet{mygray2}{mygray!70!white}							% 70
\colorlet{mygray3}{mygray!50!white}							% 50
\colorlet{mygray4}{mygray!20!white}							% 20


%% %% %%%%%%%%%%%%%%%%%%%%%%%%% %% %%
%% %%     DEFINE PROPERTIES     %% %%
%% %% %%%%%%%%%%%%%%%%%%%%%%%%% %% %%
\newcommand{\docLectureName}{}
\newcommand{\docLectureTime}{}
\newcommand{\docLectureHost}{}
\newcommand{\docAssignmentNumber}{}
\newcommand{\docAssignmentTitle}{}
\newcommand{\docTitle}{}



%% %% %%%%%%%%%%%%%%% %% %%
%% %%     HELPERS     %% %%
%% %% %%%%%%%%%%%%%%% %% %%
\newcommand{\red}[1]{{\color{red}#1}}
\newcommand{\emptyOrNotEmpty}[3]{%
	\ifthenelse{\equal{#1}{}}{#2}{#3}
}



%% %% %%%%%%%%%%%%%%%%%%%%%%%%%%%% %% %%
%% %%     PAGE LAYOUT SETTINGS     %% %%
%% %% %%%%%%%%%%%%%%%%%%%%%%%%%%%% %% %%
\clearscrheadfoot
\lohead{%
	\normalfont \textbf{%
		\emptyOrNotEmpty{\docTitle}{%
			Aufgabe \docAssignmentNumber{}: \docAssignmentTitle{}
		}{%
			\docAssignmentTitle{}: \docTitle{}
		}}\newline 
	\small{\docLectureName{} -- \docLectureTime{} -- \docLectureHost{}}
}
\rohead{\includegraphics[width=0.12\textwidth]{logo}}
\rofoot{\thepage{} / \pageref{LastPage} }
\newcommand{\points}[1]{\textit{(#1 Punkte)}}

% \renewcommand{\thesection}{\arabic{section}}




%% %% %%%%%%%%%%%%%%%%%%%%%%%%%%%% %% %%
%% %%     TEXT LAYOUT SETTINGS     %% %%
%% %% %%%%%%%%%%%%%%%%%%%%%%%%%%%% %% %%
\renewcommand{\familydefault}{\rmdefault}
\setlength{\parindent}{0pt}
\setlength{\headheight}{32pt}
\setlength{\parskip}{10pt}




%% %% %%%%%%%%%%%%%%%%%%%%% %% %%
%% %%     SOLUTION MODE     %% %%
%% %% %%%%%%%%%%%%%%%%%%%%% %% %%
\newtoggle{is_solution}
\newcommand{\solution}[1]{
	\iftoggle{is_solution}{#1}{}
}



%% %% %%%%%%%%%%%%%%%%%%%%% %% %%
%% %%     SPECIAL BOXES     %% %%
%% %% %%%%%%%%%%%%%%%%%%%%% %% %%
\tcbset{enhanced jigsaw,
		% width=\textwidth,
		arc=5pt,
		parbox=false,
		boxrule=1pt,colframe=mygray,colback=mygray4,
		left=10pt,right=10pt,boxsep=5pt,lefttitle=5pt,
		title=\textsf{\textbf{Abgabe}},
		breakable,lines before break=2,
		pad at break=15pt}

\newcommand{\submissioninfo}[2]{%
	\begin{tcolorbox}[title=\textbf{Abgabe: #1}]
		\begin{small}#2\end{small}
	\end{tcolorbox}
}

\newcommand{\eventinfo}[2]{%
	\begin{tcolorbox}[title=\textbf{Termin: #1}]
		\begin{small}#2\end{small}
	\end{tcolorbox}
}

\newcommand{\solutionbox}[1]{
	\solution{
		\begin{tcolorbox}[title=\textbf{Musterlösung}]
			\begin{small}#1\end{small}
		\end{tcolorbox}
	}
}


%% %% %%%%%%%%%%%%%%%%%%% %% %%
%% %%     TITLE BLOCK     %% %%
%% %% %%%%%%%%%%%%%%%%%%% %% %%
\renewcommand{\maketitle}[0]{

	\vspace*{1mm}
	\begin{center}
		\huge \docLectureName{} -- \docLectureTime{}
	\end{center}
	\begin{center}
		\huge Aufgabe \docAssignmentNumber: \textbf{  \docAssignmentTitle}
	\end{center}

	\emptyOrNotEmpty{\docTitle{}}{}{
		\begin{center} \Huge \textbf{ \docTitle} \end{center}%	
	}


	\solutionbox{\textbf{Hinweis:} Diese Lösung ist eine der möglichen Lösungen.
		Sie soll bei der Bearbeitung von Aufgaben und bei der Klausurvorbereitung Unterstützung bieten ohne dabei notwendigerweise komplett und vollständig richtig zu sein.}
	\vspace*{1mm}
}