# No_Sleep_Simulator

StayActiveScript est un outil PowerShell conçu pour empêcher votre ordinateur de se mettre en veille automatiquement. Ce script simule des mouvements de souris et des cliques de touches périodiques pour que le système d'exploitation pense que l'utilisateur est toujours actif

## Fonctionnalités

- **Prévention de la mise en veille** : Garde l'ordinateur actif en simulant des mouvements de souris
- **Interface utilisateur simple** : Permet aux utilisateurs de définir la durée pendant laquelle l'ordinateur doit rester actif via une interface graphique simple
- **Demande de prolongation** : À la fin de la durée spécifiée, l'utilisateur est invité à décider s'il souhaite continuer à garder l'ordinateur actif

## Installation sur Windows

Pour Windows, exécuter le fichier No_Sleep_Simulator.exe, quand Windows défend votre ordinateur apparait, cliquer sur Informations complémentaires, puis Exécuter quand même, vous n'aurez plus qu'à suivre les indications de l'installeur.

Ou

Sur le bureau --> Clique droit --> Nouveau --> Raccourci --> {url exe de votre powershell} -WindowStyle Hidden -ExecutionPolicy Bypass -File "{url ps1 de No_Sleep_Simulator}"  
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -File "C:\Users\votre_user\Downloads\No_Sleep_Simulator.ps1"

## Utilisation

- **Executable** : Télécharger l'executable et le placer sur le bureau, ou créer un raccourci de l'exe et faire de même
- **Modification du script** : Ouvrir le .PS1, modifier comme voulu puis utiliser PS2EXE
- **Créer un exe** : Se rendre sur ISE --> Installer PS2EXE "Install-Module -Name ps2exe -Scope CurrentUser" --> Convertir le script en exe "Invoke-PS2EXE -inputFile "Votre_chemin_vers_No_Sleep_Simulator.ps1" -outputFile "Le_chemin_voulu_vers_nouveau_fichier_No_Sleep_Simulator.exe" -noConsole"

## Commandes

Install-Module -Name ps2exe -Scope CurrentUser  
Invoke-PS2EXE -inputFile "Votre_chemin_vers_No_Sleep_Simulator.ps1" -outputFile "Le_chemin_voulu_vers_nouveau_fichier_No_Sleep_Simulator.exe" -noConsole

## Clause de non-responsabilité

**Avertissement de responsabilité** : L'auteur de ce logiciel ("No Sleep Simulator") ne garantit pas que ce dernier soit exempt d'erreurs et n'assume aucune responsabilité pour les dommages résultant de son téléchargement ou de son utilisation. Ce logiciel est fourni "tel quel", sans garantie d'aucune sorte, expresse ou implicite, incluant, mais sans s'y limiter, les garanties de commercialisation ou d'adaptation à un but particulier.

**Utilisation à vos propres risques** : En téléchargeant ou en utilisant "No Sleep Simulator", vous acceptez que vous utilisez le logiciel à votre propre risque et responsabilité. Vous êtes seul responsable de tout dommage à votre système informatique ou de toute perte de données qui résulterait de l'utilisation de ce logiciel.

**Consentement** : Toute utilisation du logiciel signifie l'acceptation de cette clause de non-responsabilité.
