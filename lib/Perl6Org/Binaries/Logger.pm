package Perl6Org::Binaries::Logger;

use Mojo::Base -base;
use Mojo::SQLite;

has db_file => sub { die 'DB file missing' };
has _sqlite => sub {
    my $sqlite = Mojo::SQLite->new('file:' . shift->db_file);

    #########################################################
    #########################################################
    #
    #  Please respect users' privacy. Do not log personal
    #  information, such as IP addresses.
    #
    #########################################################
    #########################################################
    $sqlite->db->query(q{
        CREATE TABLE IF NOT EXISTS downloads (
            download_id      INTEGER PRIMARY KEY AUTOINCREMENT,
            time             INTEGER NOT NULL,
            product          TEXT    NOT NULL,
            version          TEXT    NOT NULL DEFAULT 'N/A',
            os               TEXT    NOT NULL DEFAULT 'N/A'
        )
    })->finish;
    $sqlite;
};

sub log {
    my ($self, $product, $version, $os) = @_;
    $self->_sqlite->db->insert(downloads => {
        time    => time(),
        product => $product,
        version => $version,
        os      => $os,
    });
    return
}

sub stats {
    my $self = shift;
    $self->_sqlite->db->select('downloads')->hashes
}

1;
