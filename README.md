# lns-skill-copilot-agent-builder

Un skill pour [Claude Cowork](https://claude.ai) et [Claude Code](https://claude.ai/code) qui guide pas à pas la création d'un agent Microsoft 365 Copilot via l'interface Agent Builder, avec génération d'un document Word prêt à coller à la fin.

## Ce que ça fait

Le skill pose les bonnes questions dans l'ordre, puis génère chaque champ de l'Agent Builder avec une validation avant de passer au suivant :

1. **Découverte** : le rôle de l'agent et ses utilisateurs
2. **Approfondissement** : tâches, ton, contraintes, données disponibles
3. **Génération des champs** : nom, description, instructions, fonctionnalités, sources, suggestions de démarrage, disclaimer
4. **Document Word** : un `.docx` formaté, prêt à copier-coller dans l'Agent Builder

## Installation

**En une ligne (recommandé) :**
```bash
curl -fsSL https://raw.githubusercontent.com/VincentLNS/lns-skill-copilot-agent-builder/main/install.sh | bash
```

Le script détecte automatiquement l'environnement (Cowork ou Claude Code) et installe au bon endroit.

**Ou manuellement :**

*Claude Cowork :*
```bash
git clone https://github.com/VincentLNS/lns-skill-copilot-agent-builder \
  ~/Documents/Claude/Skills/copilot-agent-builder
```

*Claude Code :*
```bash
git clone https://github.com/VincentLNS/lns-skill-copilot-agent-builder \
  ~/.claude/skills/copilot-agent-builder
```

Redémarrer Claude Cowork ou relancer Claude Code : le skill apparaît automatiquement.

## Utilisation

Dans Claude Cowork ou Claude Code, taper :

```
/copilot-agent-builder
```

Ou mentionner : *"créer un agent Copilot"*, *"nouvel agent M365"*, *"builder Copilot"*. Le skill se déclenche automatiquement.

**Exemple de session :**
```
/copilot-agent-builder
> Décrivez l'agent en quelques phrases : quel est son rôle principal, et qui va l'utiliser ?
  Un agent pour aider les RH à rédiger des fiches de poste...
> [4 phases plus tard] Voici le document Word prêt à coller dans l'Agent Builder 🎉
```

## Prérequis

- [Claude Cowork](https://claude.ai) ou [Claude Code](https://claude.ai/code)
- Un compte Microsoft 365 avec accès à l'Agent Builder

## Désinstallation

*Claude Cowork :*
```bash
rm -rf ~/Documents/Claude/Skills/copilot-agent-builder
```

*Claude Code :*
```bash
rm -rf ~/.claude/skills/copilot-agent-builder
```

## Licence

MIT
