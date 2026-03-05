# 📦 Dependências das Dotfiles (Hyprland & Utils)

Este documento lista todos os pacotes e dependências necessários para replicar o seu ambiente atual, baseando-se nas configurações encontradas em `~/.config` (Hyprland, Rofi, e outros apps detectados).

Como você parece estar usando **CachyOS / Arch Linux**, os comandos de instalação utilizam `pacman` e um AUR Helper como o `yay` ou `paru`.

---

## 🖥 Base do Sistema (Wayland & Hyprland)
Estes são os pacotes centrais para o seu Window Manager funcionar da forma como está configurado.

- **`hyprland`**: O compositor principal.
- **`hyprpicker`**: Ferramenta de conta-gotas/seletor de cores da tela.
- **`hyprcursor`**: Gerenciador de cursores do ecossistema Hypr.
- **`xdg-desktop-portal-hyprland`** e **`xdg-desktop-portal-gtk`**: Essenciais para compartilhamento de tela e gerenciamento de arquivos por flatpaks.

## ⚙ Herramentas e Shell
O menu e controles do sistema utilizam esses pacotes:
- **`rofi-wayland`**: Fundamental para o `custom_menu.sh` e menus em tela.
- **`yq`**: Processador YAML de linha de comando (essencial, pois o seu script do Rofi extrai dados de um `menu.yaml` usando `yq`).
- **`noctalia-shell`**: O seu shell personalizado (detectado pelos múltiplos comandos utilizando o CLI `qs`).

## 📋 Utilitários de Clipboard e Autenticação
Identificados pelo `exec-once` no `hyprland.conf`:
- **`wl-clipboard`**: Provê as ferramentas `wl-copy` e `wl-paste`.
- **`cliphist`**: Gerenciador de histórico da área de transferência.
- **`kwallet-pam`**: Fornece o `pam_kwallet_init` para destravar as senhas no boot.
- **`polkit-gnome`** ou similar (referência a `agent_polkit`).

## 🎨 Temas e Aparência
Gerenciadores de tema utilizados/instalados:
- **`qt5ct`** & **`qt6ct`**: Configuração de temas para apps Qt5 e Qt6.
- **`kvantum`**: Engine de temas baseados em SVG para o Qt.
- **`nwg-look`**: Utilitário voltado a Wayland para configurar temas GTK, ícones e cursores.
- **`bibata-cursor-theme`**: Identificado nas variáveis de ambiente (`XCURSOR_THEME=Bibata-Modern-Classic`).

## 📁 Arquivos e Terminal
- **`kitty`**: O terminal padrão nas suas binds de atalho (`SUPER + Return`).
- **`thunar`**: O gerenciador de arquivos (recomenda-se instalar junto `thunar-archive-plugin` e `thunar-volman`).
- **`yazi`**: Gerenciador de arquivos para o terminal (TUI).

## 🌐 Navegadores e Comunicação
- **`firefox`**, **`brave-bin`** (ou `brave`), **`zen-browser-bin`**.
- **`vesktop`**: Um client customizado para o Discord (suporta Wayland e telas compartilhadas via pipewire).
- **`spotify`**: (e também `spicetify-cli` para temas do Spotify).

## 🛠 Outros Softwares / Editores
- **Áudio & Redes**: `pavucontrol` (controle de volume geral), `nm-connection-editor` (para gerir conexões visualmente), `blueman`.
- **Monitoramento e Tui**: `btop`, `fastfetch`, `cava`.
- **Códigos**: `neovim`, `vscodium-bin` (ou `vscodium`), `zed`.

---

## ⚡ Comando de Instalação (Exemplo para Arch Linux / CachyOS)

Pode usar este comando com o `yay` ou `paru` para instalar grande parte do ambiente (ajuste conforme a necessidade, omitindo `noctalia-shell` se ele for provido de outro meio):

```bash
yay -S --needed hyprland hyprpicker hyprcursor xdg-desktop-portal-hyprland rofi-wayland yq wl-clipboard cliphist kwallet-pam qt5ct qt6ct kvantum nwg-look kitty thunar thunar-archive-plugin yazi pavucontrol nm-connection-editor blueman btop fastfetch cava neovim vscodium-bin vesktop-bin spotify bibata-cursor-theme
```

> **Nota:** Certifique-se de que a configuração base (Noctalia) e ferramentas proprietárias do seu repositório pessoal já estejam na build se esse for um dotfile em transição.\n
