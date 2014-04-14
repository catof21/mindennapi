#!/usr/bin/perl
use Shell;
use Net::Ping;

sub ping_it{
	my $hostname=shift;
	my $hostip=shift;
	my $date=shift;
	$p = Net::Ping->new("icmp");
	if ($p->ping($hostip)){
		return 1;
	} else { return 0;
	}
	$p->close();
};

$date= `date '+%Y.%m.%d %H:%M:%S'`;
if (&ping_it('index','index.hu',$date)) {
	print "OK\n";
}
else {
	print "NOK\n"
}
