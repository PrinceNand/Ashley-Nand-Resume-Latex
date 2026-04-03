# Use official TeX Live image
FROM texlive/texlive:latest

# Install required LaTeX packages and collections
RUN tlmgr update --self && \
    tlmgr install \
    latexmk \
    enumitem \
    geometry \
    titlesec \
    fancyhdr \
    xcolor \
    hyperref \
    fontawesome5 \
    ragged2e \
    tools \
    collection-fontsrecommended \
    collection-latexrecommended \
    collection-latexextra \
    collection-fontsextra

# Set working directory inside container
WORKDIR /app

# Copy all project files
COPY . .

CMD ["latexmk", "-pdf", "-interaction=nonstopmode", "-file-line-error", "main.tex"]
