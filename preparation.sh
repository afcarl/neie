#!/bin/sh

set -o errexit
set -o nounset

echo "Downloading Stanford Corenlp..."
wget http://nlp.stanford.edu/software/stanford-corenlp-full-2016-10-31.zip
unzip stanford-corenlp-full-2016-10-31.zip
rm stanford-corenlp-full-2016-10-31.zip

echo "Installing pycorenlp using pip..."
pip install pycorenlp

echo "Downloading word embeddings..."
wget http://nlp.stanford.edu/data/glove.840B.300d.zip
unzip glove.840B.300d.zip
rm glove.840B.300d.zip