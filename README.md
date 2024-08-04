# Dotfiles

(.)Files configuration files for my MacMini and future Mac deployments.

Feel free to use them as you see fit. 

## 1. .wezterm.lua

In the .wezterm.lua file I define settings for my [Wezterm](https://wezfurlong.org/wezterm/index.html) deployment. I prefer it over Alacritty (personal preference).

### 1.1 Additional Info
Since Wezterm is a customizable Terminal Emulator some additional information to some of my used configs might help newcomers.

```LUA
--My config file as an example--

local wezterm = require 'wezterm'
local config = wezterm.config_builder()
---------------------------------------------------------------
	config.color_scheme = 'Abernathy'
	config.font = wezterm.font('JetBrains Mono', {weight = 'Bold'})
	config.font_size = 16
	config.window_background_image = '/Users/yukihai/wez/OSTanArch.png'
	config.window_background_image_hsb = {
		brightness = 0.4,
		hue = 1,
		saturation = 1.3
	}
	config.window_background_opacity = 0.9

return config
```

This imports the wezterm module into our config file and uses the wezterm keyword from there on. To hold the configuration we will do, we create a local variable called config.

In the next code block we do our configuration.

#### 1.1.1 Set a color-scheme (THEME)
```lua
config.color_scheme = '<ChooseTheme>'
```

Wezterm comes with pre-shipped color-schemes (themes) which you can choose from.
I chose 'Abernathy' in my case. Feel free to choose one you like.

#### 1.1.2 Set a custom font
```lua
config.font = wezterm.font('<ChooseFont', {<extra arguments>})
```

If you want to choose what font to use you can change it to a font you like inside this line.
Be wary that some fonts might require additional arguments to look "good". 
If you chosen font looks good without any extra arguments, delete everything behind the comma " , " and closing bracket " } ".

#### 1.1.3 Background image
```lua
config.window_background_image = '/<absolute>/<path>/<to>/<image>'
config.window_background_image_hsb = {
		brightness = x.y,
		hue = x.y,
		saturation = x.y
	}
```

You can set a custom background image in Wezterm using the code above.
I did not have luck using relative paths or ENV variables like $HOME so I advise using absolute paths. 

Inside of the next block you can change the brightness, hue and saturation of your chosen background image.

- Default values are 1.0.
- Going higher or lower changes the given aspect of the background image.

#### 1.1.4 Window Opacity
```LUA
config.window_background_opacity = 1.0
```

With this parameter you can set what the opacity of the Terminal window should be. 
The lower the number the more translucent the window becomes.


## 2. .nano (directory)
I use [nanorc](https://github.com/scopatz/nanorc) to add syntax highlighting to my nano installation. The default configuration is already really good for most but if you want to spice those up you can find these after installation under  ```$HOME/.nano/``` .

Once you are in that .nano directory you will see a lot of files. Every single one adds syntax highlighting support to a programming or scripting language. 

>**IMPORTANT**
>Pre-Installed nano on MacOS is not compatible / too old to use with newer version of nanorc. Use **brew install nano** to install the latest version.

## 3. .zshrc
I use the .zshrc file to customise my zsh shell environment. It utilizes [oh-my-zsh](https://ohmyz.sh/) under the hood to give me further customization and extension capabilities.

I will further explain the most important parts I used to configure my z-shell.

### 3.1 Customization
#### 3.1.1 Color scheme and theming
To set a custom color scheme and theme for the terminal you can explore the shear amount of themes available [here](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes) .

I've choosen "robbyrussell" for my deployment. If you want to use a different theme just replace "robbyrussel" with whatever you want to use.

```sh
ZSH_THEME="robbyrussell"
```

#### 3.1.2 Plugins
To extend my z-shell deployment I use a bunch of plugins. These allow me to extend z-shell beyond what its default capabilities are.

My currently deployed plugins are:
```sh
plugins=(git bgnotify colored-man-pages colorize qrcode rust screen)
```

As you can see you have to write these in a single row next to each other, it is very important that you keep them like this or oh-my-zsh will not know which ones it has to download.

I will not go in to much detail, but most of these plugins are self explanatory. 
If you want to explore the plugin-capabilities of oh-my-zsh click [here](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins) .
