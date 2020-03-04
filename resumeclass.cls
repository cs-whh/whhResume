\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resumeclass}[2020/03/02 v1.0 a latex cv template]

\LoadClass[a4paper,11pt]{article}



%% ------------------------------------
%               导入包
%% ------------------------------------
% 分割方框需要颜色
\RequirePackage{color}
% 设置页面大小
\RequirePackage[centering,paperwidth=210mm,paperheight=297mm,body={180mm,247mm}]{geometry}
%\RequirePackage{fancybox}
\RequirePackage{xeCJK}
% 自定义itemize环境
\RequirePackage{enumitem}
% 用于固定图片
\RequirePackage{float}
% 用于插入图片
\RequirePackage{graphicx} 

%% ------------------------------------
%               预设
%% ------------------------------------
\definecolor{mygray}{gray}{0.9}
\definecolor{mywrite}{RGB}{255,255,255}
\pagestyle{empty}
% 禁止首行缩进
\setlength{\parindent}{0em}

\setitemize[1]{itemsep=-1pt,partopsep=0pt,parsep=\parskip,topsep=5pt,leftmargin=*}
\renewcommand{\baselinestretch}{1.2}

%% ------------------------------------
%               环境
%% ------------------------------------
\newcommand\cvsection[1]{\large \colorbox{mygray}{\makebox[1\textwidth][l]{\textbf{#1}}}}
\newcommand\resheading[1]{{\noindent \large \colorbox{mygray}{\begin{minipage}{\textwidth}{\textbf{\textrm{#1} \vphantom{p\^{E}}}}\end{minipage}}}}

\newcommand{\cvevent}[4]{
	\colorbox{mywrite}{\makebox[\textwidth][l]{\textbf{#1} \hfill #2}}\\
	\colorbox{mywrite}{\makebox[\textwidth][l]{\textit{#3} \hfill #4}}
}

\newcommand{\cvaward}[2]{
	\makebox[0.97\textwidth][l]{\textbf{#1} \hfill \textit{#2}}
}

%% ------------------------------------
%               外部变量
%% ------------------------------------
\newcommand*\@whhResume@Name{}
\newcommand*\@whhResume@Age{}
\newcommand*\@whhResume@Sex{}
\newcommand*\@whhResume@Phone{}
\newcommand*\@whhResume@Email{}
\newcommand*\@whhResume@Photo{}
\newcommand*\@whhResume@PhotoSize{}

\newcommand*\yourname[1]{%
	\renewcommand{\@whhResume@Name}{#1}
}
\newcommand*\yourage[1]{%
	\renewcommand{\@whhResume@Age}{#1}
}
\newcommand*\yoursex[1]{%
	\renewcommand{\@whhResume@Sex}{#1}
}
\newcommand*\yourphonenumber[1]{%
	\renewcommand{\@whhResume@Phone}{#1}
}
\newcommand*\youremail[1]{%
	\renewcommand{\@whhResume@Email}{#1}
}
\newcommand*\yourphoto[2]{%
	\renewcommand{\@whhResume@Photo}{#2}
	\renewcommand{\@whhResume@PhotoSize}{#1}
}




%% ------------------------------------
%              简历头部信息
%% ------------------------------------


\newcommand\resumehead{%
	\begin{figure}[H]
		\begin{flushright}
			\includegraphics[width=\@whhResume@PhotoSize\textwidth]{\@whhResume@Photo}
		\end{flushright}
	\end{figure}
	
	\vspace{-105pt}
	
	
	\textbf{\LARGE \@whhResume@Name}\\
	{\textit{年龄}：\@whhResume@Age} \\
	{\textit{性别}：\@whhResume@Sex} \\
	{\textit{电话}：\@whhResume@Phone}\\
	{\textit{邮箱}：\@whhResume@Email}	
}




