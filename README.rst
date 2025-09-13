===============
sopel-wikimedia
===============

Sopel plugin for interacting with Wikimedia projects like Wikipedia and Wiktionary

Looking up Wikipedia articles, either using the ``.wp`` command or an in-message URL::

    <SnoopJ> .wp ichiju sansai
    <terribot> [wikipedia] Ichijū-sansai | "Ichijū-sansai (Japanese: 一汁三菜)
               'one soup, three dishes' is a traditional Japanese dining format
               of a bowl of rice, soup, a main dish, and two side dishes. It is
               a key component of kaiseki cuisine and reflects the aesthetic and
               nutritional principles of Japanese meals." |
               https://en.wikipedia.org/wiki/Ichij%C5%AB-sansai
    <SnoopJ> https://en.wikipedia.org/wiki/List_of_ISO_639_language_codes
    <terribot> [wikipedia] List of ISO 639 language codes | "ISO 639 is a
               standardized nomenclature used to classify languages. Each
               language is assigned a two-letter (set 1) and three-letter
               lowercase abbreviation (sets 2–5). Part 1 of the standard, ISO
               639-1 defines the two-letter codes, and Part 3 (2007), ISO 639-3,
               defines the three-letter codes, aiming to cover all known natural
               languages, largely superseding the ISO 639-2 three-letter code
               standard. "

Looking up Wiktionary definitions and etymologies using the ``.wt`` and ``.ety`` commands::

    <SnoopJ> .wt schnozz
    <terribot> [wiktionary] schnozz — noun: 1. (slang) Nose
    <SnoopJ> .ety windfall
    <terribot> [wiktionary] windfall: From Middle English windfal, wyndfall,
               equivalent to wind + fall. Cognate with Middle High German
               wintval, wintfal, German Windfall.

Install
=======

The recommended way to install this plugin is to use ``pip``::

    $ pip install sopel-wikimedia

Note that this plugin requires Python 3.8+ and Sopel 7.1+. It won't work on
Python versions that are not supported by the version of Sopel you are using.

Configure
=========

``sopel-wikimedia`` can be configured by invoking Sopel's interactive wizard::

    $ sopel-plugins configure wikipedia
    Configure wikipedia.py - Sopel Wikipedia Plugin
    Enter the default language to find articles from. [en]

The [bot database](https://sopel.chat/docs/package/db) also supports the
per-nick (for PMs) and per-channel value `wikipedia_lang`.
