# BezierCurve

[![Build Status](https://github.com/Rikoxo/BezierCurve.jl/actions/workflows/CI.yml/badge.svg?branch=master)](https://github.com/Rikoxo/BezierCurve.jl/actions/workflows/CI.yml?query=branch%3Amaster)

## Description

BezierCurve.jl est un package Julia sur les courbes de Bézier. Il permet de tracer des courbes de Bézier, de calculer leurs intersections et d'offrir une visualisation.

## Fonctionnalités

Tracer des courbes de Bézier :

    Génération de points d'une courbe de Bézier à partir de points de contrôle.
    Support pour les courbes de Bézier de degré arbitraire.

Trouver les intersections :

    Calcul des points d'intersection entre deux courbes de Bézier.

Visualisation des courbes :

    Traçage interactif avec les points de contrôle, les courbes et leurs intersections.

## Utilisation

Un fichier exemple exemple.jl est fourni dans le package pour tester ses fonctionnalités. Voici comment l'exécuter :

    Lancez Julia et exécutez le fichier exemple : julia exemple.jl

Ce script effectue les opérations suivantes :

    Trace deux courbes de Bézier avec leurs points de contrôle.
    Calcule les intersections entre les deux courbes.
    Visualise le tout dans une figure interactive.

## Test

Le package contient également des tests que vous pouvez exécuter pour voir le bon focntionnement du package.

## Multiple Dispatch

Support pour différents types :

    Les méthodes fonctionnent avec tout type qui hérite de AbstractVector{<:Real}. Cela inclut :
        Vector{Float64}
        Vector{Int}
        Autres types dérivés d'AbstractVector.