#!/usr/bin/perl


# process:
# http://www.cs.cmu.edu/afs/cs.cmu.edu/project/fgdata/OldFiles/Recorder.app/utterances/Type1/harvsents.txt
# and produce a json-ish list

while (my $line = <>) {
    chomp($line);
    # line is eg.:
    #1. The birch canoe slid on the smooth planks. 
    if ($line =~ /.*\d+\.\s+(.*)$/) {
        print qq("$1",\n);
    }
}
