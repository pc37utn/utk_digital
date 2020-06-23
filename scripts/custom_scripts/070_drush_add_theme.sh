#!/usr/bin/env bash
echo "drush enable theme"
# Set permissions /sites/all/themes
#sudo chown -hR vagrant:apache "$DRUPAL_HOME"/sites/all/themes
#sudo chmod -R 755 "$DRUPAL_HOME"/sites/all/themes
cd "$DRUPAL_HOME"/sites/all/themes || exit

# Clone UTKdrupal Theme
#cd $HOME_DIR
#git clone https://github.com/utkdigitalinitiatives/UTKdrupal
#cd UTKdrupal || exit
# git fetch
# git branch -r
# git checkout -b digital_collections origin/digital_collections
#git pull
# Set permissions UTKdrupal
#sudo chown -hR vagrant:apache UTKdrupal
#sudo chown -hR vagrant:apache sis banners omega

#cp -r /home/vagrant/UTKdrupal/sis "$DRUPAL_HOME"/sites/all/themes/ || exit
#cp -r /home/vagrant/UTKdrupal/banners "$DRUPAL_HOME"/sites/all/themes/ || exit
#cp -r /home/vagrant/UTKdrupal/omega "$DRUPAL_HOME"/sites/all/themes/ || exit
#cd "$DRUPAL_HOME"/sites/all/themes || exit

# Set permissions UTKdrupal
#sudo chown -hR vagrant:apache UTKdrupal
#sudo chown -hR vagrant:apache sis banners

# Enable sis and set as default
drush -y en sis
drush -y vset theme_default sis
# uncomment below to set as default
drush eval "variable_set('theme_default', 'sis')"

# Enable UTKdrupal and set as default
#drush -y en UTKdrupal
#drush -y vset theme_default UTKdrupal
# uncomment below to set as default
#drush eval "variable_set('theme_default', 'UTKdrupal')"

# Admin Theme Adminimal https://www.drupal.org/project/adminimal_theme
cd "$DRUPAL_HOME"/sites/all/modules/ || exit
#drush dl adminimal_theme adminimal_admin_menu module_filter
#drush en -y adminimal adminimal_admin_menu module_filter

#drush -y vset admin_theme adminimal
#drush -y vset admin_menu_margin_top 0
#drush -y vset adminimal_admin_menu_render "hidden"

drush dis -y comment contextual dashboard overlay

# Disable Unneeded Themes
#drush -y dis bartik
#drush -y dis seven

# Enable devel and its prereqs
#drush -y vset theme_debug 1
#drush -y dis devel
#drush -y dl devel
#sudo yum -y install subversion
#drush -y en devel

# Rebuild on every page, needs to be disabled on production env
#drush -y vset devel_rebuild_theme_registry 1

# Fix Admin menu
#drush -y vset admin_menu_margin_top 1
