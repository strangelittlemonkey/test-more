package Test::Builder2::Event;

use Test::Builder2::Mouse::Role;

requires qw(event_type as_hash);


=head1 NAME

Test::Builder2::Event - A test event role

=head1 SYNOPSIS

    package My::Event;

    use Test::Builder2::Mouse;
    with 'Test::Builder2::Event';

    sub as_hash    { ... }
    sub event_type { return "thingy" }


=head1 DESCRIPTION

Test::Builder2 is a federated system where multiple builders can
define their own way to do asserts.  They communicate and coordinate
with each other by way of events.  These events can include:

    start of a test stream
    end of a test stream
    the result of an assert

The basic Event doesn't do a whole lot.  It contains data and that's
about it.  Subclasses are expected to extend the interface quite a
bit, but they will all be able to dump out their relevant data.

=head1 METHODS

=head2 Required Methods

You must implement these methods.

=head3 event_type

    my $type = $event->event_type;

Returns the type of event this is.

For example, "result".

=head3 as_hash

    my $data = $event->as_hash;

Returns all the data associated with this C<$event> as a hash of
attributes and values.

The intent is to provide a way to dump all the information in an Event
without having to call methods which may or may not exist.


=head1 SEE ALSO

L<Test::Builder2::Result>

=cut

1;
