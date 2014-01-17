package Psh::Locale::French;

use strict;
use locale;

BEGIN {
	my %sig_description = (
						   'TTOU' => 'terminal (sortie)',
						   'TTIN' => 'terminal (entr�e)',
						   'KILL' => 'arr�t (KILL)',
						   'FPE'  => 'exception (virgule flottante)',
						   'SEGV' => 'd�faut de segmentation',
						   'PIPE' => 'tuyau (pipe) cass�',
						   'BUS'  => 'erreur de bus',
						   'ABRT' => 'avort�',
						   'ILL'  => 'instruction ill�gale',
						   'TSTP' => 'arr�t des entr�es',
						   'INT'  => "interruption"
						   );

	$Psh::text{sig_description}=\%sig_description;

	$Psh::text{done}='fait ';
	$Psh::text{terminated}='termin�';
	$Psh::text{stopped}='arr�t�';
	$Psh::text{restart}='relancement';
	$Psh::text{foreground}='premier plan';
	$Psh::text{exec_failed}="Erreur (exec %1) �chou�.\n";
  $Psh::text{simulate_perl_w}="En simulant -w et 'strict'\n";
	$Psh::text{perm_denied}="%2 : %1 : Permission refus�e.\n";
	$Psh::text{no_such_dir}="%2 : %1 : R�pertoire introuvable.\n";
	$Psh::text{no_such_builtin}="%2 : %1 : commande interne (builtin) introuvable.\n";
	$Psh::text{readline_interrupted}="\nInterrompu !\n";
	$Psh::text{readline_error}="Readline n'a pas initialis� correctement :\n%1\n";
	$Psh::text{no_readline}="Readline non disponible. Veuillez installer Term::Readline::Perl\n";
	$Psh::text{old_gnu_readline}="La version de votre module Term::ReadLine::Gnu %1 devrait �tre au moins �gale � 1.06. Veuillez le mettre � jour.\n";
	$Psh::text{unalias_noalias}="unalias : `%1' n'est pas exprim�\n";
	$Psh::text{builtin_readline_header}="Probl�me Readline %1 avec les dispositifs :\n";
	$Psh::text{no_jobcontrol}="Votre syst�me ne supporte pas la gestion de t�che\n";
	$Psh::text{help_header}="psh supporte les commandes internes (builtin) suivantes :\n";
	$Psh::text{no_help}="D�sol�, l'aide pour la commande interne (builtin) %1 n'est pas disponible\n";

	$Psh::text{prompt_expansion_error}=<<EOT;
%3: Avertissement : L'expansion d' '\\%1' (dans le 
prompt) a produit le texte '\\%2'. Je retire
cet �chappement.
EOT

	$Psh::text{prompt_unknown_escape}="%2: Avertissement : \$Psh::prompt contient l'�chappement inconnu `\\%1'.\n";
	$Psh::text{no_libwin32}="libwin32 requis (disponible sur CPAN en tant que paquet ou avec la distribution d'ActivePerl).\n";
}


1;
