use lib '/Homes/xpix/projekts/Tk-Moduls', 
	'X:\projekts\Tk-Moduls';
use ExtUtils::MakeMaker;

WriteMakefile (
	'NAME'		=> 'Tk::DBI::Form',
	'DISTNAME'	=> 'Tk-DBI-Form',
	'VERSION'	=> '0.03',
	'AUTHOR'	=> 'Frank Herrmann <xpix@netzwert.ag>',
	'PREREQ_PM' 	=> { 	'Tk' => 0, 
				'Tk::JBrowseEntry' => 0,
				'Tk::XDialogBox' => 0,
				'Tk::NumEntry' => 0,
				'Tk::Date' => 0,
				'Tk::LabFrame' => 0,
				'Tk::FBox' => 0,
 			   },

	'dist'		=> { 'COMPRESS' => 'gzip -9f', 'SUFFIX' => 'gz' },
);

