#!/bin/sh

#Delete possible existing files with conflict name
rm *.dat

# Read in data
python parser.py ebay_data/items-*.json

# Eliminate Duplicates
sort ./UserRaw.dat | uniq > ./UserUniq.dat
sort ./ItemAuctionRaw.dat | uniq > ./ItemAuctionUniq.dat
sort ./Item_catRaw.dat | uniq > ./Item_catUniq.dat
sort ./BidsRaw.dat | uniq > ./BidsUniq.dat

# add quotes
sed 's/"/""/g;s/[^|]*/"&"/g' ./ItemAuctionUniq.dat > ./ItemAuction.dat
sed 's/"/""/g;s/[^|]*/"&"/g' ./UserUniq.dat > ./User.dat
sed 's/"/""/g;s/[^|]*/"&"/g' ./Item_catUniq.dat > ./Item_cat.dat
sed 's/"/""/g;s/[^|]*/"&"/g' ./BidsUniq.dat > ./Bids.dat

# remove extra files
rm *Raw.dat
rm *Uniq.dat

# This is the end of runParser.sh.
