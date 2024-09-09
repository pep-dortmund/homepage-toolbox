# Archive How-To

## For a new year:
- create new year directory
- copy file structure of last year using
```
cp -R --attributes-only previous-year current-year
```
- create new tar-ball with
```
tar -czf current-year.tar.gz current-year
```
- reset links to `latest` and `current` using
```
ln -sf current-year.tar.gz current.tar.gz
ln -sf previous-year.tar.gz latest.tar.gz
```
- then during the workshop add all files as necessary and re-create the tar-ball
  regularly. This way all download-able files are up to date and the structure maintains
  the same for all new years

