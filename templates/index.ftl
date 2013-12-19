<#include "header.ftl">
	
	<#include "menu.ftl">


	<#list posts as post>
  		<#if (post.status == "published")>
  			<a href="${post.uri}"><h1>${post.title}</h1></a>
  			<p>${post.date?string("dd MMMM yyyy")}</p>
  			<p>${post.body}</p>
  			<#if (post_index - 1 >= 0)>
				<p>Previous</p>
			</#if>
  			<#if (post_index + 1 > 0 && post_has_next)>
				<p>Next</p>
			</#if>
  		</#if>
  	</#list>
	
	<hr />
	
	<p>Older posts are available in the <a href="/${config.archive_file}">archive</a>.</p>

<#include "footer.ftl">
