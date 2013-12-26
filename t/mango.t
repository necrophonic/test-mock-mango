#!/usr/bin/env perl

use Test::More;
use Test::Exception;
use Mango;

use_ok 'Test::Mock::Mango';
my $mango = Mango->new;

isa_ok($mango->db, 'Test::Mock::Mango::DB', 'Get correct object');

# Check all attributes can be accessed without error
lives_ok {$mango->credentials} 		q|attribute 'credentials' ok|;
lives_ok {$mango->default_db} 		q|attribute 'default_db' ok|;
lives_ok {$mango->hosts} 			q|attribute 'hosts' ok|;
lives_ok {$mango->ioloop} 			q|attribute 'credentials' ok|;
lives_ok {$mango->j} 				q|attribute 'j' ok|;
lives_ok {$mango->max_connections} 	q|attribute 'max_connections' ok|;
lives_ok {$mango->protocol} 		q|attribute 'protocol' ok|;
lives_ok {$mango->w} 				q|attribute 'w' ok|;
lives_ok {$mango->wtimeout} 		q|attribute 'wtimeout' ok|;

done_testing();
	