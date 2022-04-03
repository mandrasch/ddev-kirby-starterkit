
# DDEV Kirby Starterkit

[Kirby CMS](https://getkirby.com/) meets [DDEV](https://ddev.readthedocs.io/en/stable/) & [Gitpod](https://gitpod.io/).

**Try out in your browser:**

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/mandrasch/ddev-kirby-starterkit/)

**Local usage:**

Clone to your local laptop and run:

```
ddev start && ddev composer install && ddev launch
```

If you wan't to open the backend, use `ddev launch /panel`.

**About this starterkit**

See https://github.com/getkirby/starterkit for more information.

## How was this created?

Based on ["Installing via composer"](https://getkirby.com/docs/cookbook/setup/composer#installing-composer)-docs.

```bash
ddev config --project-type=php
ddev ssh
composer create-project getkirby/starterkit starterkit-install-folder && \
    echo "Moving installation to root folder ..." && \
    mv starterkit-install-folder/README.md starterkit-install-folder/README_kirby.md && \
    cp -Rp starterkit-install-folder/. /var/www/html && \
    rm -rf starterkit-install-folder/
```

Since kirby does recognize DDEV local urls as remote sites, `/site/config/config.php` was edited:

```
  'panel' =>[
    'install' => true
  ]
```

See: https://getkirby.com/docs/reference/system/options/panel#allow-the-panel-to-be-installed-on-a-remote-server


## License

Kirby allows free local try outs, but for live sites purchasing a license is required.
[getkirby.com](https://getkirby.com) · [License agreement](https://getkirby.com/license)
