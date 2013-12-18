<#include "header.ftl">

	<#include "menu.ftl">
		
	<div class="page-header">
		<h1>${content.title}</h1>
	</div>

	<#if content.date?exists>
		<p><em>${content.date?string("dd MMMM yyyy")}</em></p>
	</#if>

	<p>${content.body}</p>

	<hr>

<#include "footer.ftl">
