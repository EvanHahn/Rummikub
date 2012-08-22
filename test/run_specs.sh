#!/bin/bash
cat ../rummi.coffee >> _temp.coffee
echo '' >> _temp.coffee
cat specs.coffee >> _temp.coffee
coffee _temp.coffee
rm _temp.coffee
