package NewsExtractor;
our $VERSION = v0.0.1;

use Moose;
use Types::URI -all;
use SemanticWeb::Schema::NewsArticle;

has url => ( required => 1, is => 'ro', isa => Uri, coerce => 1 );

no Moose;

sub download {
    my NewsExtractor $self = shift;

    return $self;
}

sub as_NewsArticle {
    return SemanticWeb::Schema::NewsArticle->new(
        headline => "XXX",
        dateline => "XXX",
        creator  => "YYY",
    );
}

1;

__END__

=head1 NAME

NewsExtractor -- download and extract news articles from Internet.

=head1 SYNOPSIS

    my $extractor = NewsExtractor->new( $url );

    $extractor->download();

    # https://metacpan.org/pod/SemanticWeb::Schema::NewsArticle
    $o = $extractor->as_NewsArticle;

=head1 DESCRIPTION

=head1 AUTHOR

Kang-min Liu <gugod@gugod.org>

=head1 LICENSE

To the extent possible under law, Kang-min Liu has waived all copyright and related or neighboring rights to NewsExtractor. This work is published from: Taiwan.

https://creativecommons.org/publicdomain/zero/1.0/

=cut
