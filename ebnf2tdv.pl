#!perl -n0
# convert ebnf to a list of node-node connections, for visualizing eg with d3

s{\n\t}{}g;                     # merge continuation lines
s{/\*.*\*/}{}gs;                # remove comments
s{^[A-Z0-9_]+\t::=.*\n}{}gm;    # remove terminal productions
while (($head,$tail) = m{^(\w+)\t::=(.*)\n}) {
  $tail =~ s{(:?[^'])[*+?]}{}g; # remove EBNF repetition indicators (eg ?), but leave if literals (eg '?')
  ....
}
