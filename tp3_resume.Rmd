---
title: "Résumé du TP3 - Application Dice Roller"
author: "Développeur Android"
date: "`r Sys.Date()`"
output: html_document
---

# Introduction
Ce TP3 consiste à développer une application Android de type **Dice Roller** (Lancer de dés) en Java. L'application permet à l'utilisateur de choisir entre un dé à 6 faces et un dé à 20 faces, de lancer le dé pour obtenir un nombre aléatoire, et de naviguer entre les différentes interfaces.

# Architecture et Composants

## 1. Activités (Activities)
- **`MainActivity`** : L'écran d'accueil de l'application. Il présente deux boutons permettant de choisir le type de dé (6 ou 20 faces).
- **`DiceActivity`** : L'écran de jeu qui reçoit le paramètre `max` via une `Intent`, affiche le titre correspondant, génère un nombre aléatoire sécurisé (`SecureRandom`) lors du clic sur le bouton de lancer, et propose un bouton **"Return"** pour revenir à l'écran d'accueil.

## 2. Layouts (Fichiers XML)
- **`activity_main.xml`** : Interface d'accueil contenant les boutons centrés avec des icônes de dés (`ic_dice.xml`).
- **`activity_dice.xml`** : Interface de jeu contenant :
  - Un bouton **Return** pour la navigation.
  - Un titre (`TextView`) dynamique (`X sided dice`).
  - Une zone de résultat (`TextView`) grande taille.
  - Un bouton **"Roll the dice..."** pour effectuer le lancer.

## 3. Déclaration dans le Manifest
- Configuration de `MainActivity` comme activité principale (`MAIN` / `LAUNCHER`).
- Déclaration de `DiceActivity` pour permettre la navigation par `Intent`.

# Résumé technique
- **Langage** : Java
- **UI** : XML Layouts (LinearLayout, Buttons, TextViews)
- **Gestion des événements** : `View.OnClickListener`
- **Génération aléatoire** : `java.security.SecureRandom`
