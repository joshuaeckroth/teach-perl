#!/usr/bin/perl

use Acme::EyeDrops qw(sightly);

print sightly( { Shape       => 'camel',
                 SourceFile  => 'process-stdin.pl',
                 Regex       => 1 
} );

