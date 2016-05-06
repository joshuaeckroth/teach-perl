#!/usr/bin/perl

# while(<STDIN>) {

#     # pull out date values out of any text
#     while(m!(\d\d)[/-](\d\d)[/-](\d{4})!g) {
#         print "Month = $1, day = $2, year = $3\n";
#     }
# }

use File::Slurp;
$input = read_file(\*STDIN);

while($input =~ m!<a\s+href=\"(.*?)\".*?>(.*?)</a>!gs) {
    $href = $1;
    $link = $2;
    $link =~ s!.*>(.*?)<\/.*>!\1!g;
    print "Link to $href with text $link\n";
}


# if($input =~ m/\.([A-Za-z0-9]+)$/) {
#     $ext = $1;
#     print "Extension was: $ext\n";
#     if($ext ne "doc" && $ext ne "docx") {
#         print "Please upload a Doc/Docx file.\n";
#     }
# }

# don't match these characters: [^adlfj]

# while(<>) {
#     if(m{^\s*(?!Male|Yes|Lorem|Female)([A-Z][a-z]+)\s+([A-Z][a-z]+)\s*$}) {
#         print "$1 $2\n";
#     }
# }

