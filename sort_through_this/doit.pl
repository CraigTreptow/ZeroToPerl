#!/usr/bin/env perl

use warnings;
use strict;

my @items = [];

sub pushItem {
    my $itemId = "i" . sprintf("%d", $_[0]);
    print "itemId[$itemId]\n";
    push(@items, $itemId);
}

sub popItems {
    my $itemsXml = "<key>items</key>\n<array>\n";

    foreach (@items) {
        $itemsXml .= "<string>$_</string>\n";
    }

    $itemsXml .= "</array>\n";

    return $itemsXml;
}

pushItem(0);
pushItem(1);
pushItem(2);
print popItems();
