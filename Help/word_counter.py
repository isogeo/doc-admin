# -*- coding: UTF-8 -*-
#!/usr/bin/env python

#------------------------------------------------------------------------------
# Name:         Word Counter
# Purpose:
#
# Authors:      Julien M. (https://github.com/Guts)
#
# Python:       2.7.x
# Created:      11/06/2015
# Updated:      11/06/2015
#
# Licence:      GPL 3
#------------------------------------------------------------------------------

# Sources
# http://stackoverflow.com/questions/9663918/how-can-i-tag-and-chunk-french-text-using-nltk-and-python
# http://www.fabienpoulard.info/post/2008/03/05/Tokenisation-en-mots-avec-NLTK
# https://github.com/cmchurch/nltk_french/blob/master/french-nltk.py

###############################################################################
########### Libraries #############
###################################

# Standard library
from collections import Counter  # calculate occurences in a list
from glob import glob
from os import chdir, path, walk
import re

# third party libraries
import nltk
from nltk.corpus import stopwords
from nltk.tokenize import WhitespaceTokenizer
from nltk.stem.snowball import FrenchStemmer  #import the French stemming library
import nltk.data

###############################################################################
########### Functions #############
###################################


def list_files(in_path, li_process, li_ignore):
    """
    traverse directories structure to get files to process and files ignored
    """
    for root, dirs, files in walk(in_path):
        for file in files:
            # handle encoding troubles in files and folders names
            try:
                unicode(path.join(root, file))
                full_path = path.join(root, file)
            except UnicodeDecodeError, e:
                full_path = path.join(root, file.decode('latin1'))
                print unicode(full_path), e

            # filter on extensions
            if path.splitext(full_path.lower())[1].lower() in extensions:
                li_process.append(full_path)
            else:
                li_ignore.append(full_path)
                pass
    # end of function
    return li_process, li_ignore


def get_raw_file(filepath):
    """
    reads in raw text from a text file using the argument (path), which represents the path/to/file
    """
    with open(filepath, 'r') as f:
        rawfile = f.read().decode('utf8')  # extract raw text
    # end of function
    return rawfile



def get_nltk_text(raw, encoding='utf8'):
    """
    create an nltk text using the passed argument (raw) after filtering out the commas'''
    """
    # turn the raw text into an nltk text object
    no_commas = re.sub(r'[.|,|#|*|-|\']', ' ', raw)  # filter out all the commas, periods, and appostrophes using regex
    tokens = nltk.word_tokenize(no_commas)  # generate a list of tokens from the raw text
    text = nltk.Text(tokens, encoding)  # create a nltk text from those tokens

    # end of function
    return text


def parse_words(contenu):
    """
    Extraction of words mentioned into the offers. The goal is to perform
    a semantic analysis.
    It's based on NLTK: http://www.nltk.org

    li_id = list of offers'IDs to process
    db_cursor = connection cursor to the DB where to store extracted data
    """
    # get list of common French words to filter
    stop_fr = set(stopwords.words('french'))   # add specific French

    # custom list
    li_stop_custom = ('(', ')', '...', '.',':',';','/','nbsp','&','#',',','-',':',\
                      'http', 'img', 'br', 'amp', '<', '>', '%', 'border', '*', 'border=',
                      'les', 'leurs', '&', '#', '-', '+', ':', '.', ';', 'à', 'où', 'des',
                      ',', 'nbsp', 'De', 'et', 'en', '(', ')', 'pour')

    # list to store words OK
    li_words_ok = []
    # dictionary of words/frequency
    dict_words_frek = {}

    # basic clean of the content
    annonce_clean1 = remove_tags(contenu)
    annonce_clean1 = ''.join([i for i in annonce_clean1 if not i.isdigit()])
    # tokenizing
    sents = [french_tokenizer.tokenize(s) for s in annonce_clean1]
    # print('\n\n', sents)
    contenu_final = nltk.word_tokenize(annonce_clean1)
    # filtering
    for mot in contenu_final:
        if mot not in stop_fr and mot not in li_stop_custom and len(mot) > 2:
            li_words_ok.append(mot)
        else:
            pass

    print(li_words_ok)

    # calc words frequency
    for mot in li_words_ok:
        if mot in dict_words_frek:
            dict_words_frek[mot] = dict_words_frek.get(mot) + 1
        else:
            dict_words_frek[mot] = 1

    # end of function
    return annonce_clean1

###############################################################################
########## Main program ###########
###################################

# Globals
french_tokenizer = nltk.data.load('tokenizers/punkt/french.pickle')

# french_stopwords = get_stopswords()
extensions = (".md", ".markdown")
filesToProcess = []
files_ignored = []  # to have a list of files ignored in case of iterative operations

# path to search into
target = r"fr"
target = path.abspath(target)
chdir(target)

# get the files to analyze
list_files(target, filesToProcess, files_ignored)

# looping on files to process
for file in filesToProcess:
    raw = get_raw_file(file)
    no_commas = re.sub(r'[.|\[|\]|&|(|)|,|#|*|;|:|-|\']', ' ', raw)  # filter out all the markdown syntax tags
    texte_en_mots = nltk.word_tokenize(no_commas)

print texte_en_mots
