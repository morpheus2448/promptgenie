#!/bin/bash
#
echo
echo "# PromptGenie Install script."
echo "#"
echo "# This script adds/updates the alias: 'pg' in your .bashrc file."
echo "# The alias is a shortcut to ~/pg/pg.sh."
echo "#"
echo "# Be sure to check and update ~/pg/settings.txt with the correct parameters."
echo "#"
#
bashrc=~/.bashrc
pg_alias="alias pg='~/pg/pg.sh'"
#
if grep -q "alias pg" "$bashrc"; then
  sed -i "s%alias pg.*%$pg_alias%" "$bashrc"  
else
  echo "$pg_alias" >> "$bashrc"
fi
#
echo "# If you don't see any errors, the script is installed!"
echo "# Now type 'source ~/.bashrc' or restart your terminal for changes to take effect."
echo "# Finally, type 'pg' followed by your query, like: '\$pg command to show free space in GB?'"