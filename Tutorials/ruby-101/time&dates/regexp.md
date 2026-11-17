## Regexp
A regular expression (also called a regexp) is a match pattern (also simply called a pattern).

A common notation for a regexp uses enclosing slash characters:

/foo/

A regexp may be applied to a target string; The part of the string (if any) that matches the pattern is called a match, and may be said to match:

re = /red/
re.match?('redirect') # => true   # Match at beginning of target.
re.match?('bored')    # => true   # Match at end of target.
re.match?('credit')   # => true   # Match within target.
re.match?('foo')      # => false  # No match.

## Regexp Uses
A regexp may be used:

To extract substrings based on a given pattern:

re = /foo/              # => /foo/
re.match('food')        # => #<MatchData "foo">
re.match('good')        # => nil

See sections Method match and Operator =~.

To determine whether a string matches a given pattern:

re.match?('food') # => true
re.match?('good') # => false

See section Method match?.

As an argument for calls to certain methods in other classes and modules; most such methods accept an argument that may be either a string or the (much more powerful) regexp.

See Regexp Methods.

## Regexp Objects
A regexp object has:

A source; see Sources.

Several modes; see Modes.

A timeout; see Timeouts.

An encoding; see Encodings.

## Creating a Regexp
A regular expression may be created with:

A regexp literal using slash characters (see Regexp Literals):

# This is a very common usage.
/foo/ # => /foo/

A %r regexp literal (see %r: Regexp Literals):

# Same delimiter character at beginning and end;
# useful for avoiding escaping characters
%r/name\/value pair/ # => /name\/value pair/
%r:name/value pair:  # => /name\/value pair/
%r|name/value pair|  # => /name\/value pair/

# Certain "paired" characters can be delimiters.
%r[foo] # => /foo/
%r{foo} # => /foo/
%r(foo) # => /foo/
%r<foo> # => /foo/

Method Regexp.new.

## Method match
Each of the methods Regexp#match, String#match, and Symbol#match returns a MatchData object if a match was found, nil otherwise; each also sets global variables:

'food'.match(/foo/) # => #<MatchData "foo">
'food'.match(/bar/) # => nil

## Operator `=~`
Each of the operators Regexp#=~, String#=~, and Symbol#=~ returns an integer offset if a match was found, nil otherwise; each also sets global variables:

/bar/ =~ 'foo bar' # => 4
'foo bar' =~ /bar/ # => 4
/baz/ =~ 'foo bar' # => nil

## Method match?
Each of the methods Regexp#match?, String#match?, and Symbol#match? returns true if a match was found, false otherwise; none sets global variables:

'food'.match?(/foo/) # => true
'food'.match?(/bar/) # => false

## Global Variables
Certain regexp-oriented methods assign values to global variables:

match: see Method match.

=~: see Operator =~.

The affected global variables are:

$~: Returns a MatchData object, or nil.

$&: Returns the matched part of the string, or nil.

$`: Returns the part of the string to the left of the match, or nil.

$': Returns the part of the string to the right of the match, or nil.

$+: Returns the last group matched, or nil.

$1, $2, etc.: Returns the first, second, etc., matched group, or nil. Note that $0 is quite different; it returns the name of the currently executing program.

These variables, except for $~, are shorthands for methods of $~. See Global variables equivalence at MatchData.

Examples:

# Matched string, but no matched groups.
'foo bar bar baz'.match('bar')
$~ # => #<MatchData "bar">
$& # => "bar"
$` # => "foo "
$' # => " bar baz"
$+ # => nil
$1 # => nil

# Matched groups.
/s(\w{2}).*(c)/.match('haystack')
$~ # => #<MatchData "stac" 1:"ta" 2:"c">
$& # => "stac"
$` # => "hay"
$' # => "k"
$+ # => "c"
$1 # => "ta"
$2 # => "c"
$3 # => nil

# No match.
'foo'.match('bar')
$~ # => nil
$& # => nil
$` # => nil
$' # => nil
$+ # => nil
$1 # => nil

Note that Regexp#match?, String#match?, and Symbol#match? do not set global variables.

