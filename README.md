## 👥 Membres du groupe

- **Youba Bouanani**
- **Boualem Belbessai**
- **Mohammed Aiche**

---

# 🚗 SwiftCar

Une application mobile de réservation de voitures développée avec Flutter, offrant une expérience utilisateur moderne et intuitive pour parcourir, sélectionner et réserver des véhicules en quelques clics.

---

## 📋 Vue d'ensemble

SwiftCar transforme un prototype Figma en une application Flutter complètement fonctionnelle. L'application permet aux utilisateurs de naviguer à travers un catalogue de véhicules, consulter les détails de chaque voiture, effectuer une réservation avec sélection de dates, et télécharger automatiquement un reçu au format PDF.

---

## ✨ Fonctionnalités

### Interface utilisateur
- **Onboarding dynamique** avec illustrations accueillantes
- **Authentification** via écran de connexion
- **Catalogue visuel** présentant les véhicules en grille responsive
- **Détails enrichis** pour chaque véhicule (spécifications, prix, disponibilité)

### Réservation
- **Sélecteur de dates** interactif pour définir la période de location
- **Validation en temps réel** des données saisies
- **Confirmation visuelle** avec popup de succès moderne

### Expérience utilisateur
- **Navigation fluide** entre les écrans
- **Thème personnalisé** Material 3
- **Design responsive** adapté à toutes les tailles d'écran
- **Composants réutilisables** pour une cohérence visuelle

---

## 🏗️ Architecture du projet

```
swift_car/
├── lib/
│   ├── config/
│   │   └── theme.dart              # Configuration du thème global
│   ├── models/
│   │   └── car.dart                # Modèle de données des véhicules
│   ├── routes/
│   │   └── app_routes.dart         # Gestion centralisée de la navigation
│   ├── screens/
│   │   ├── onboarding_screen.dart  # Écran d'introduction
│   │   ├── login_screen.dart       # Authentification
│   │   ├── home_screen.dart        # Catalogue des véhicules
│   │   ├── car_details_screen.dart # Détails d'un véhicule
│   │   └── booking_screen.dart     # Réservation 
│   ├── widgets/
│   │   ├── car_card.dart           # Carte véhicule réutilisable
│   │   └── primary_button.dart     # Bouton principal stylisé
│   └── main.dart                   # Point d'entrée de l'application
│
├── assets/
│   └── images/
│       ├── cars/                   # Images des véhicules
│       │   ├── audi_q3.png
│       │   ├── tesla3.png
│       │   ├── yaris.png
│       │   └── tucson.png
│       └── onboarding/             # Assets d'introduction
│           └── onboarding_car.png
│
├── pubspec.yaml                    # Configuration et dépendances
└── README.md
```

### Organisation modulaire

**Configuration** : Centralisation des paramètres globaux (thème, couleurs, typographie)

**Modèles** : Structures de données réutilisables et typées

**Routes** : Navigation déclarative avec routes nommées

**Screens** : Écrans principaux représentant les pages de l'application

**Widgets** : Composants UI réutilisables favorisant la cohérence

---

## 🛠️ Technologies et dépendances

### Framework
- **Flutter 3.0+** : Framework UI multiplateforme
- **Dart** : Langage de programmation moderne

---

## 🎨 Design et UX

### Principes de design
- **Material Design 3** pour une interface moderne et cohérente
- **Responsive layout** adapté aux smartphones et tablettes
- **Animations subtiles** pour améliorer l'expérience utilisateur
- **Typographie claire** facilitant la lecture

### Palette de couleurs
- **Primaire** : Bleu (#00AEEF) pour les actions principales
- **Secondaire** : Orange pour les boutons de réservation
- **Succès** : Vert pour les confirmations
- **Neutre** : Gris pour le texte secondaire

### Composants réutilisables
- `PrimaryButton` : Bouton standardisé avec styles cohérents
- `CarCard` : Carte véhicule avec image, détails et prix
