Satis - Package Repository Generator
====================================

Summary
-------
The satis creator reads satis configurations from the config directory and creates the composer repositories and puts
them into the repositories directory.


Usage
-----
Create composer repositories with scripts/update-composer-repository.sh. The script is looking for all .json files
in the configs directory. It creates the homepage-string and afterwards creates the composer repository with
vendor/composer/satis/bin/satis.