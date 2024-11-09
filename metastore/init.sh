#!/bin/sh
schematool -dbType $DB_DRIVER -validate --verbose
if [ $? -ne 0 ]; then
  schematool -dbType $DB_DRIVER -initSchema
fi
