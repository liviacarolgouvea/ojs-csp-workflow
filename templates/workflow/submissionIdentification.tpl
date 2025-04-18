{**
 * templates/workflow/submissionIdentification.tpl
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * Show submission identification component
 *}

<span class="pkpWorkflow__identificationId">
	{{ currentPublication.submissionIdCSP }}
</span>

<span class="pkpWorkflow__identificationDivider">
	-
</span>
<span class="pkpWorkflow__identificationSection">
	{{ currentPublication.sectioTitle }}
</span>

<span class="pkpWorkflow__identificationDivider">
	-
</span>

<span v-if="currentPublication.codigoFasciculoTematico" class="pkpWorkflow__identificationSection">
	{translate key="plugins.generic.CspSubmission.codigoFasciculoTematico"}:
	{{ currentPublication.codigoFasciculoTematico }}
</span>

<br>
<span
	class="pkpWorkflow__identificationTitle"
	v-html="localizeSubmission(currentPublication.fullTitle, currentPublication.locale)"
>
</span>
<br>
<span v-if="currentPublication.authorsStringShort" class="pkpWorkflow__identificationAuthor">
	{{ currentPublication.authorsString }}
</span>


