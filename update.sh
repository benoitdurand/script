#!/bin/bash

echo "## Mise à jour de JQuery ##"
find . -type f -name jquery.min.js -exec cp ~/Documents/Dev_WEB/_bower/libs/jquery/dist/jquery.min.js {} \;

echo "## Mise à jour de Bootstrap ##"
find . -type f -name bootstrap.min.css -exec cp /Users/frdbecc/Documents/Dev_WEB/_bower/libs/bootstrap/dist/css/bootstrap.min.css {} \;
find . -type f -name bootstrap-theme.min.css -exec cp /Users/frdbecc/Documents/Dev_WEB/_bower/libs/bootstrap/dist/css/bootstrap-theme.min.css {} \;
find . -type f -name bootstrap.min.js -exec cp /Users/frdbecc/Documents/Dev_WEB/_bower/libs/bootstrap/dist/js/bootstrap.min.js {} \;
find . -type f -name glyphicons-halflings-regular.eot -exec cp /Users/frdbecc/Documents/Dev_WEB/_bower/libs/bootstrap/dist/fonts/glyphicons-halflings-regular.eot {} \;
find . -type f -name glyphicons-halflings-regular.svg -exec cp /Users/frdbecc/Documents/Dev_WEB/_bower/libs/bootstrap/dist/fonts/glyphicons-halflings-regular.svg {} \;
find . -type f -name glyphicons-halflings-regular.ttf -exec cp /Users/frdbecc/Documents/Dev_WEB/_bower/libs/bootstrap/dist/fonts/glyphicons-halflings-regular.ttf {} \;
find . -type f -name glyphicons-halflings-regular.woff -exec cp /Users/frdbecc/Documents/Dev_WEB/_bower/libs/bootstrap/dist/fonts/glyphicons-halflings-regular.woff {} \;
find . -type f -name glyphicons-halflings-regular.woff2 -exec cp /Users/frdbecc/Documents/Dev_WEB/_bower/libs/bootstrap/dist/fonts/glyphicons-halflings-regular.woff2 {} \;

echo "## Mise à jour de Bootstrap-table ##"
find . -type f -name bootstrap-table.min.js -exec cp /Users/frdbecc/Documents/Dev_WEB/_bower/libs/bootstrap-table/dist/bootstrap-table.min.js {} \;
find . -type f -name bootstrap-table.min.css -exec cp /Users/frdbecc/Documents/Dev_WEB/_bower/libs/bootstrap-table/dist/bootstrap-table.min.css {} \;
find . -type f -name bootstrap-table-fr-FR.min.js -exec cp /Users/frdbecc/Documents/Dev_WEB/_bower/libs/bootstrap-table/dist/locale/bootstrap-table-fr-FR.min.js {} \;
find . -type f -name bootstrap-table-export.min.js -exec cp /Users/frdbecc/Documents/Dev_WEB/_bower/libs/bootstrap-table/dist/extensions/export/bootstrap-table-export.min.js {} \;
find . -type f -name bootstrap-table-filter.min.js -exec cp /Users/frdbecc/Documents/Dev_WEB/_bower/libs/bootstrap-table/dist/extensions/filter/bootstrap-table-filter.min.js {} \;

echo "## Mise à jour de Bootstrap-select ##"
find . -type f -name bootstrap-select.min.js -exec cp /Users/frdbecc/Documents/Dev_WEB/_bower/libs/bootstrap-select/dist/js/bootstrap-select.min.js {} \;
find . -type f -name bootstrap-select.min.css -exec cp /Users/frdbecc/Documents/Dev_WEB/_bower/libs/bootstrap-select/dist/css/bootstrap-select.min.css {} \;

echo "## Mise à jour de Table-Sorter ##"
find . -type f -name jquery.tablesorter.min.js -exec cp /Users/frdbecc/Documents/Dev_WEB/_bower/libs/jquery.tablesorter/dist/js/jquery.tablesorter.min.js {} \;
find . -type f -name jquery.tablesorter.widgets.min.js -exec cp /Users/frdbecc/Documents/Dev_WEB/_bower/libs/jquery.tablesorter/dist/js/jquery.tablesorter.widgets.min.js {} \;
find . -type f -name jquery.tablesorter.pager.min.js -exec cp /Users/frdbecc/Documents/Dev_WEB/_bower/libs/jquery.tablesorter/dist/js/extras/jquery.tablesorter.pager.min.js {} \;
find . -type f -name theme.bootstrap_2.min.css -exec cp /Users/frdbecc/Documents/Dev_WEB/_bower/libs/jquery.tablesorter/dist/css/theme.bootstrap_2.min.css {} \;

echo "## Mise à jour de Select2 ##"
find . -type f -name select2.min.js -exec cp /Users/frdbecc/Documents/Dev_WEB/_bower/libs/select2/select2.min.js {} \;
find . -type f -name select2_locale_fr.js -exec cp /Users/frdbecc/Documents/Dev_WEB/_bower/libs/select2/select2_locale_fr.js {} \;
find . -type f -name select2.css -exec cp /Users/frdbecc/Documents/Dev_WEB/_bower/libs/select2/select2.css {} \;

