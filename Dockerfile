FROM texlive/texlive:latest

RUN tlmgr install \
    fontspec \
    fontawesome5 \
    xetex \
    paracol \
    enumitem \
    titlesec \
    xcolor \
    hyperref \
    setspace \
    tikz \
    eso-pic

WORKDIR /data
CMD ["xelatex", "-interaction=nonstopmode", "cv.tex"]
