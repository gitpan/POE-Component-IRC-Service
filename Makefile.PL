# $Id: Makefile.PL,v 1.6 1999/08/10 23:22:52 dennis Exp $

use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile(
			  'NAME'	=> 'POE::Component::IRC::Service',
			  'PM'      => { 'Service.pm' => '$(INST_LIBDIR)/Service.pm',
							 'Service-P10.pm' => '$(INST_LIBDIR)/Service/P10.pm',
							 'Filter-IRC-P10.pm' => '$(INST_LIBDIR)/../../Filter/IRC/P10.pm',
							 'Filter-CTCP-P10.pm' => '$(INST_LIBDIR)/../../Filter/CTCP/P10.pm',
							 'Service-Hybrid.pm' => '$(INST_LIBDIR)/Service/Hybrid.pm',
							 'Filter-IRC-Hybrid.pm' => '$(INST_LIBDIR)/../../Filter/IRC/Hybrid.pm',
							 'Filter-CTCP-Hybrid.pm' => '$(INST_LIBDIR)/../../Filter/CTCP/Hybrid.pm',
						   },
			  'PREREQ_PM' => {
							  'POE'    => 0.06_07,
							  'Carp'   => 0,
							  'Socket' => 0,
							 },
			  'VERSION_FROM' => 'Service.pm', # finds $VERSION
			  'dist' => { 'COMPRESS' => 'gzip --best' },
			 );

