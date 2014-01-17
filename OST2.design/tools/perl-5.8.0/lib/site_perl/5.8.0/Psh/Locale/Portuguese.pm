package Psh::Locale::Portuguese;

use strict;
use locale;

BEGIN {
	my %sig_description = (
						   'TTOU' => 'sa�da do TTY',
						   'TTIN' => 'entrada do TTY',
						   'KILL' => 'matado',
						   'FPE'  => 'exce��o do ponto flutuando',
						   'SEGV' => 'falha da segmenta��o',
						   'PIPE' => 'tubula��o quebrada',

                                      # TODO: This is probably not correct. It probably means
                                      # bus as in schoolbus or city bus.
						   'BUS'  => 'erro de barra-�nibus',

						   'ABRT' => 'abortado',
						   'ILL'  => 'instru��o ilegal',
						   'TSTP' => 'pare datilografado no TTY',
						   'INT'  => 'o car�ter de interrup��o datilografou'
						   );

	$Psh::text{sig_description}=\%sig_description;

	$Psh::text{done}='feito';
	$Psh::text{terminated}='terminado';
	$Psh::text{stopped}='parado';
	$Psh::text{restart}='rein�cio';
	$Psh::text{foreground}='primeiro plano';
	$Psh::text{exec_failed}="Erro (exec %1) falhou.\n";
    $Psh::text{simulate_perl_w}="Simulando a op��o -w e strict\n";
	$Psh::text{perm_denied}="%2: %1: Permiss�o negada.\n";
	$Psh::text{no_such_dir}="%2: %1: Nenhum tal diret�rio.\n";
	$Psh::text{no_such_builtin}="%2: %1: Nenhum tal builtin.\n";
	$Psh::text{readline_interrupted}="\nInterrompido!\n";
	$Psh::text{readline_error}="Readline n�o come�ou acima corretamente:\n%1\n";
	$Psh::text{no_readline}="Nenhum m�dulo de Readline dispon�vel. Instale por favor Term::ReadLine::Perl\n";
	$Psh::text{unalias_noalias}="unalias: `%1' n�o � ali�s\n";
	$Psh::text{builtin_readline_header}="Usando Readline: %1, com caracter�sticas:\n";
	$Psh::text{no_jobcontrol}="Seu sistema n�o suporta o controle de trabalho\n";
	$Psh::text{help_header}="psh suporta os seguintes comandos internos\n";
	$Psh::text{no_help}="Pesarosa, a ajuda para o builtin %1 n�o est� dispon�ve\n";


	$Psh::text{prompt_expansion_error}=<<EOT;
%3: Aviso: A expans�o de '\\%1' na mensagem de alerta
rendeu o texto que contem '\\%2'. Removendo a seq��ncia
de escape da substitui��o.
EOT

	$Psh::text{prompt_unknown_escape}="%2: Aviso: \$Psh::prompt contem seq��ncia de escape desconhecida `\\%1'.\n";
	$Psh::text{no_libwin32}="libwin32 requerido (dispon�vel como o pacote de CPAN ou com distribui��o de ActivePerl).\n";
}


1;
