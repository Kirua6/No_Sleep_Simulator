# No_Sleep_Simulator

StayActiveScript est un outil PowerShell conçu pour empêcher votre ordinateur de se mettre en veille automatiquement. Ce script simule des mouvements de souris périodiques pour que le système d'exploitation pense que l'utilisateur est toujours actif

## Fonctionnalités

- **Prévention de la mise en veille** : Garde l'ordinateur actif en simulant des mouvements de souris
- **Interface utilisateur simple** : Permet aux utilisateurs de définir la durée pendant laquelle l'ordinateur doit rester actif via une interface graphique simple
- **Demande de prolongation** : À la fin de la durée spécifiée, l'utilisateur est invité à décider s'il souhaite continuer à garder l'ordinateur actif

## Utilisation

- **Executable** : Télécharger l'executable et le placer sur le bureau, ou créer un raccourci de l'exe et faire de même
- **Modification du script** : Ouvrir le .PS1, modifier comme voulu puis utiliser PS2EXE
- **Créer un exe** : Se rendre sur ISE --> Installer PS2EXE "Install-Module -Name ps2exe -Scope CurrentUser" --> Convertir le script en exe "Invoke-PS2EXE -inputFile "Votre_chemin_vers_No_Sleep_Simulator.ps1" -outputFile "Le_chemin_voulu_vers_nouveau_fichier_No_Sleep_Simulator.exe" -noConsole"

## Commandes

Install-Module -Name ps2exe -Scope CurrentUser
Invoke-PS2EXE -inputFile "Votre_chemin_vers_No_Sleep_Simulator.ps1" -outputFile "Le_chemin_voulu_vers_nouveau_fichier_No_Sleep_Simulator.exe" -noConsole
