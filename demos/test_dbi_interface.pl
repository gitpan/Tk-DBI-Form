#!/usr/local/bin/perl -w
use strict;
use lib '../.', 
	'/Homes/xpix/projekts/Tk-Moduls';

use Tk;
use Tk::ItemStyle;
use Tk::DBI::Form;
use DBI;

my $host = shift || &use_this_so;
my $db   = shift || &use_this_so;
my $user = shift || &use_this_so;
my $pass = shift || &use_this_so;
my $table = shift || &use_this_so;
my $id  = shift || &use_this_so;

# DB Handle
my $dbh = DBI->connect(	
	"DBI:mysql:database=${db};host=${host}", 
	$user, $pass)
		or die ("Can't connect to database:", $! );

my $mw = MainWindow->new;
my $tkdbi = $mw->DBIForm(
		-dbh   		=> $dbh,
		-table  	=> $table,
		-editId		=> 'yes',
);

$tkdbi->newRecord();

# $tkdbi->editRecord($id);


printf "$table changed in last 10 minutes?: %s\n", ($tkdbi->Table_is_Change(time - 600) ? 'YES' : 'NO');


$mw->bind('<Escape>', sub{ exit });
$tkdbi->bind('<Escape>', sub{ exit });
MainLoop;


sub use_this_so {
	print "\nplease use $0 host db user password table id\n";
	exit;
}

