% @brief : 
% - Classe permettant la production LaTeX d'un rapport de stage à l'ENSICAEN suivant la charte graphique 2013. 
% - Les documents compilés avec cette classe doivent l'être par le moteur "xelatex" et non "pdflatex" puisque la charte spécifie la police Calibri...
% - La distribution utilisée est MiKTeX (libre).
% - L'IDE conseillé est TexMaker (disponible sous Unix & Windows).
% - Afin d'obtenir le rendu final, n'oubliez pas de compiler plusieurs fois votre document.
% - Cette classe est libre de droits et de distributions.
% @author : Hadrien TOMA
% @version : 1.0


% En-tête :
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rapportDeProjetENSICAEN}
\LoadClass[a4paper, 11pt]{report}
%\LoadClass[a4paper, 11pt, fleqn] --> Aligner les équations à gauche.
\ProcessOptions


% Packages nécessaires :
\RequirePackage{array}
\RequirePackage[T1]{fontenc}
\RequirePackage{ucs} 
\RequirePackage[latin1]{inputenc}
\RequirePackage{lmodern}
\RequirePackage{textcomp}
\RequirePackage[french]{babel}
\RequirePackage[francais]{layout}
\RequirePackage{titlesec}
\RequirePackage{graphicx}
\RequirePackage[font=small,format=plain,labelfont=bf,up,textfont=it,up]{caption}
\RequirePackage[linkcolor=black,citecolor=black,urlcolor=blue,anchorcolor=black,bookmarks=true,plainpages=false]{hyperref}
\RequirePackage{fancyhdr}
\RequirePackage{glossaries}
\glossarystyle{altlist}
\RequirePackage{wasysym}
\RequirePackage{amssymb}
\RequirePackage{stmaryrd}
\RequirePackage[siunitx]{circuitikz}
\RequirePackage{lastpage}
\RequirePackage{anysize}
\RequirePackage{calc}
\RequirePackage{fontspec}
\RequirePackage{xunicode}
\RequirePackage{xltxtra}


% Police principale :
\setmainfont{Calibri}


% Dimensions caractéristiques du layout :
\setlength{\oddsidemargin}{5pt}
\setlength{\topmargin}{-50pt}
\setlength{\headheight}{102pt}
\setlength{\headsep}{10pt}
\setlength{\textheight}{640pt}
\setlength{\textwidth}{445pt}
\setlength{\marginparsep}{0pt}
\setlength{\marginparwidth}{0pt}
\setlength{\footskip}{40pt}
\setlength{\marginparpush}{0pt}


% Définitions des variables :
\def\@titre{Non renseigné~!}
\def\titre#1{\def\@titre{#1}}

\def\@soustitre{}
\def\soustitre#1{\def\@soustitre{#1}}

\def\@specialite{Non renseigné~!}
\def\specialite#1{\def\@specialite{#1}}

\def\@majeure{Non renseigné~!}
\def\majeure#1{\def\@majeure{#1}}

\def\@anneeEnCours{Non renseigné~!}
\def\anneeEnCours#1{\def\@anneeEnCours{#1}}

\def\@anneeUniversitaire{Non renseigné~!}
\def\anneeUniversitaire#1{\def\@anneeUniversitaire{#1}}

\def\@promotion{Non renseigné~!}
\def\promotion#1{\def\@promotion{#1}}

\def\@nom{Non renseigné~!}
\def\nom#1{\def\@nom{#1}}

\def\@prenom{Non renseigné~!}
\def\prenom#1{\def\@prenom{#1}}

\def\@nomEntreprise{Non renseigné~!}
\def\nomEntreprise#1{\def\@nomEntreprise{#1}}

\def\@adresseEntreprise{Non renseigné~!}
\def\adresseEntreprise#1{\def\@adresseEntreprise{#1}}

\def\@logoEcoleEnTete{Non renseigné~!}
\def\logoEcoleEnTete#1{\def\@logoEcoleEnTete{#1}}

\def\@type{Rapport de stage}
\def\type#1{\def\@type{#1}}

\def\@nomEcole{ENSICAEN}
\def\nomEcole#1{\def\@nomecole{#1}}

\def\@adresseEcole{6, bd Maréchal Juin\newline F - 14050 Caen Cedex 4}
\def\adresseEcole#1{\def\@adresseEcole{#1}}

\def\@logoEntrepriseEnTete{Non renseigné~!}
\def\logoEntrepriseEnTete#1{\def\@logoEntrepriseEnTete{#1}}

\newcommand{\basDePagePremierePage}{img/basDePage.png}

\newcommand{\logoEcolePremierePage}{img/logoEcole.png}


% Dimensions caractéristiques (et par défaut) des logos :
\newlength{\widthEntreprisePremierePage}
\newlength{\widthEcolePremierePage}
\newlength{\widthEntrepriseEnTete}
\setlength{\widthEntrepriseEnTete}{2cm}
\newlength{\widthEcoleEnTete}
\setlength{\widthEcoleEnTete}{2cm}


% En-tête et pied de page :
\pagestyle{fancy}
\fancyhead{}                     
\fancyfoot{}                     
\fancyhead[L]{\includegraphics[width=\widthEcoleEnTete]{\@logoEcoleEnTete}}
\fancyhead[C]{\begin{tabular}{c} {Rapport de projet 3ème année – ENSICAEN} \\ {\@anneeEnCours,~\@specialite,~\@majeure} \\ {\@nom~\@prenom ~/ \lastName~\firstName} \\ {} \\ {} \\ {} \end{tabular}}
\fancyhead[R]{\includegraphics[width=\widthEntrepriseEnTete]{\@logoEntrepriseEnTete}}
\fancyfoot[L]{\thepage\ / \pageref{LastPage}}
\fancyfoot[C]{}
\fancyfoot[R]{}
\renewcommand{\footrulewidth}{0pt}     
\renewcommand{\headrulewidth}{0pt}
\makeatletter
\let\ps@plain=\ps@fancy
\makeatother


% Table des figures :
\addto\captionsfrench{%
  \renewcommand{\listfigurename}{Liste des figures\vspace{-0.5cm}}%
}


% Table des tableaux :
\addto\captionsfrench{%
  \renewcommand{\listtablename}{Liste des tableaux\vspace{-0.5cm}}%
}


% Couleurs :
\definecolor{titrePrincipal}{RGB}{31,73,125}
\definecolor{sousTitrePrincipal}{RGB}{0,112,192}
\definecolor{reference}{RGB}{84,141,212}
\definecolor{titre1}{RGB}{0,112,192}
\definecolor{titre2}{RGB}{31,73,125}
\definecolor{url}{RGB}{0,0,255}
\definecolor{noir}{RGB}{0,0,0}


% Page de garde :
\newcommand{\pageDeGarde}[1]{
\thispagestyle{empty}
\begin{picture}(0,0)
    \put(-89,-680){\includegraphics[scale=0.62]{\basDePagePremierePage}}
\end{picture}
\begin{picture}(0,0)
    \put(220,-35){\includegraphics[scale=1]{\logoEcolePremierePage}}
\end{picture}
\begin{picture}(0,0)
    \put(-30,-70){\includegraphics[scale=#1]{\logoEntreprisePremierePage}}
\end{picture}
\put(-30,-200){\color{titrePrincipal}{
\begin{minipage}{20.5cm} {\fontsize{36}{36} \selectfont {\TitrePrincipal}} \end{minipage}}}
\put(-30,-250){\color{sousTitrePrincipal}{
\begin{minipage}{20.5cm} {\fontsize{16}{16} \selectfont {\SousTitre}} \end{minipage}}}
\put(170,-405){\color{reference}{
\begin{minipage}{20.5cm} {\fontsize{14}{14} \selectfont \begin{tabular}{p{10.75cm}} {Références :} \\ {-~\Nom~\Prenom  ~/ \lastName~\firstName} \\ {-~\Promotion ~/ \Specialite ~/ \Majeure} \\ {-~\TuteurEntreprise} \\ {-~\TuteurEcole} \\ {-~\AnneeUniversitaire} \end{tabular}} \end{minipage}}}
\newpage
}


% Titres 1 (chapter) :
\titleformat{\chapter}[hang]{\color{titre1} \fontsize{16}{16} \selectfont}{\thechapter}{1pc}{} 
\titlespacing*{\chapter}{0pt}{-45pt}{20pt}


% Titres 2 (section) :
\titleformat{\section}[hang]{\color{titre2} \fontsize{14}{14} \selectfont}{\thesection}{1pc}{}
\titlespacing*{\section}{0pt}{20pt}{10pt}


% Titres 3 (subsection) :
\titleformat{\subsection}[hang]
  {\fontsize{12}{12} \selectfont}
  {\thesubsection}
  {1pc}
  {\underline}
\titlespacing*{\section}{0pt}{10pt}{10pt}


% Titres 4 (subsubsection) :
\titleformat{\subsubsection}[hang]
{\normalfont\filright\normalsize\sffamily\itshape}
{\thesubsubsection }
{0.75em}
{}[]


% Les figures :
\addto\captionsfrench{\def\figurename{{\textit{Fig.}}}}
\renewcommand\thefigure{\arabic{figure}}


% Les tableaux :
\addto\captionsfrench{\def\tablename{Tab.}}
\renewcommand\thetable{\arabic{table}}


% Les équations :
\renewcommand\theequation{\arabic{equation}}


% Les URL :
\makeatletter
    \def\url@ukostyle{%
    \@ifundefined{selectfont}{\def\UrlFont{\sf}}{\def\UrlFont{\sf}}}
\makeatother