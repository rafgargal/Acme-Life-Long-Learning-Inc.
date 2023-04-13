<%@ page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" uri="http://www.the-acme-framework.org/"%>

<acme:form>

	<acme:input-textbox code="company.practicum.form.label.code" path="code"/>
	<acme:input-textbox code="company.practicum.form.label.title" path="title"/>
	<acme:input-textbox code="company.practicum.form.label.summary" path="summary"/>
	<acme:input-textbox code="company.practicum.form.label.goals" path="goals"/>
	<acme:input-select code="company.practicum.form.label.course" path="course" choices="${courses}"/>
	
	<jstl:choose>
		<jstl:when test="${_command == 'show'}">
			<acme:button code="company.practicum.form.button.practicum-sessions" action="/company/practicum-session/list?masterId=${id}"/>	
			<acme:submit code="company.practicum.form.button.delete" action="/company/practicum/delete"/>
			<acme:submit code="company.practicum.form.button.update" action="/company/practicum/update"/>		
		</jstl:when>
		<jstl:when test="${_command == 'create'}">
			<acme:submit code="company.practicum.form.button.create" action="/company/practicum/create"/>
		</jstl:when>		
	</jstl:choose>
</acme:form>