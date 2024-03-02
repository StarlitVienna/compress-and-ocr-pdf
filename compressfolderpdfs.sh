#!/bin/bash

for filename in ./*.pdf;
    do
      gs -sDEVICE=pdfwrite -dNumRenderingThreads=128 -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook \
          -dNOPAUSE -dQUIET -dBATCH -dNOGC -sOutputFile=${filename}_compressed.pdf ${filename}
      ocrmypdf --language por ./${filename}_compressed.pdf ./${filename}_compressed_OCRed.pdf
      done
