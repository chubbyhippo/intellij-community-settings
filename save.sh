#!/usr/bin/env sh

# config paths
for config_path in \
  "$HOME"/.config/JetBrains/IdeaIC* \
  "$HOME"/AppData/Roaming/JetBrains/IdeaIC* \
  "$HOME"/Library/Application\ Support/JetBrains/IdeaIC*; do
  if [ -d "$config_path" ]; then
    echo "$config_path"
    # save code styles
    cp -f "$config_path"/codestyles/Default.xml ./config/codestyles/Default.xml

    # save options
    cp -f "$config_path"/options/colors.scheme.xml ./config/options/colors.scheme.xml
    cp -f "$config_path"/options/editor.xml ./config/options/editor.xml
    cp -f "$config_path"/options/laf.xml ./config/options/laf.xml
    cp -f "$config_path"/options/mac/keymap.xml ./config/options/mac/keymap.xml
    cp -f "$config_path"/options/postfixTemplates.xml ./config/options/postfixTemplates.xml
    cp -f "$config_path"/options/projectView.xml ./config/options/projectView.xml
    cp -f "$config_path"/options/ui-datetime.xml ./config/options/ui-datetime.xml
    cp -f "$config_path"/options/ui.lnf.xml ./config/options/ui.lnf.xml
    cp -f "$config_path"/options/windows/keymap.xml ./config/option/windows/keymap.xml

    # save template
    cp -f "$config_path"/templates/javaJava.xml ./config/templates/javaJava.xml
    # save other templates
    cp -f "$config_path"/templates/javaJUnit.xml ./config/templates/javaJUnit.xml
    cp -f "$config_path"/templates/javaJackson.xml ./config/templates/javaJackson.xml
    cp -f "$config_path"/templates/javaMockito.xml ./config/templates/javaMockito.xml
    cp -f "$config_path"/templates/javaSpring.xml ./config/templates/javaSpring.xml
    cp -f "$config_path"/templates/javaWireMock.xml ./config/templates/javaWireMock.xml

  fi
done

# save .ideavimrc
cp -f "$HOME"/.ideavimrc ./ideavim/.ideavimrc