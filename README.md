# synaptome_db
Synaptome's database

To build Synaptome's database:

* Unzip all data in Synaptic.ePhys.Data.zip to the /data/renamed/
directory. Run:
$ rename_files.sh

Requirements:
Linux program 'rename' for renaming Synaptic.ePhys.Data.zip files.
Version 1.10 un ubuntu 19.04 has been found to work. It was d/l from
https://metacpan.org/release/File-Rename 
(https://cpan.metacpan.org/authors/id/R/RM/RMBARKER/File-Rename-1.10.tar.gz)
It was compiled with the "$ perl Makefile.PL" method.

* In build_synaptome_db.sh, change
ADDR=localhost # db address
DB=synaptome   # db name
variables if needed

* Create db_user.txt and db_pass.txt files that contains your database access login.
Only put a single piece of text that is your user or pass in each file.

* Run:
$ build_synaptome_db.sh

Note:
On my pc with an ssd the building process takes about 1 hour.
A lot of the processing time is automating queries to
transfer the values from the original 160 files and corresponding
tables into a table for each condition, amounting to 32
tables in total.