Prezto — Instantly Awesome Zsh - CUSTOM
=======================================

Prezto is the configuration framework for [Zsh][1]; it enriches the command line
interface environment with sane defaults, aliases, functions, auto completion,
and prompt themes.

Installation
------------

Prezto will work with any recent release of Zsh, but the minimum required
version is 4.3.11.

  1. Launch Zsh:

     ```console
     zsh
     ```

  2. Clone the repository:

     ```console
     env GIT_SSL_NO_VERIFY=true git clone --recursive https://github.com/ankitsinghvisen/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
     ```

  3. Create a new Zsh configuration by copying the Zsh configuration files
     provided:

     ```sh
     setopt EXTENDED_GLOB
     for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
       ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
     done
     ```

     Note: If you already have any of the given config files, ln will error. In
     simple cases you can add `source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"` to
     the bottom of your `.zshrc` to load prezto but keep your config intact. For
     more complicated setups, it is recommended that you back up your original
     configs and replace them with the provided prezto runcoms.

  4. Set Zsh as your default shell:

     ```console
     chsh -s /bin/zsh
     ```

  5. Open a new Zsh terminal window or tab.

### Troubleshooting

If you are not able to find certain commands after switching to *Prezto*,
modify the `PATH` variable in *~/.zprofile* then open a new Zsh terminal
window or tab.

Updating
--------

Run `zprezto-update` to automatically check if there is an update to zprezto.
If there are no file conflicts, zprezto and its submodules will be
automatically updated. If there are conflicts you will instructed to go into
the `$ZPREZTODIR` directory and resolve them yourself.

To pull the latest changes and update submodules manually:
