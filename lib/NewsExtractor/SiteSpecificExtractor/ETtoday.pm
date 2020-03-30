package NewsExtractor::SiteSpecificExtractor::ETtoday;
use utf8;
use Moo;
extends 'NewsExtractor::GenericExtractor';

sub journalist {
    my ($self) = @_;
    my $text = $self->content_text;
    my ($name) = $text =~ m{(?:\n|\A)(?:實習)? 記者 ([\p{Letter}、]+?) ／ (?:[\p{Letter}—]+)? (?:報導|編譯) \n}x;
    unless ($name) {
        ($name) = $text =~ m{(?:\n|\A)網搜小組／([\p{Letter}、]+)報導\n};
    }
    return $name;
}

1;
