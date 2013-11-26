package MojoX::Test::MangoStub::FakeData;

use v5.10;
use strict;
use warnings;

use Mango::BSON qw(bson_time);

sub new {
	bless {
		collecion_name	=> 'the_simpsons',
		collection => [
			{
				_id		=> 'ABCDEFG-123456',
				name	=> 'Homer Simpson',
				job		=> 'Safety Inspector',
				dob		=> '1956-03-01',
				hair	=> 'none',
			},
			{
				_id		=> 'ABCDEFG-124343',
				name	=> 'Marge Simpson',
				job		=> 'Home Maker',
				dob		=> '1956-10-01',
				hair	=> 'blue',
			},
			{
				_id		=> 'BARTSC-12434',
				name	=> 'Bart Simpson',
				job		=> 'Hell Raiser',
				dob		=> '1979-04-01',
				hair	=> 'yellow',
			},
			{
				_id		=> 'LISASC-12434',
				name	=> 'Lisa Simpson',
				job		=> 'Know it all',
				dob		=> '1981-09-28',
				hair	=> 'yellow',
			},
			{
				_id		=> 'MAGGIE-12434',
				name	=> 'Maggie Simpson',
				job		=> 'Ticking timebomb',
				dob		=> '1986-11-05',
				hair	=> 'yellow',
			},
		]
	}, shift;
}

1;

__END__

=head1 TITLE

MojoX::Test::MangoStub::FakeData - pretends to be data to be returned from mango calls

=head1 SYNOPSIS

  my $data = MojoX::Test::MangoStub::FakeData->new;

=head1 DESCRIPTION

Object to hold known data that will be returned by test calls.

=cut
