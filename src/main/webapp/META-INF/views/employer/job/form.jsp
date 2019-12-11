<%--
- form.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form readonly="true">
	<acme:form-textbox code="employer.job.form.label.reference" path="reference" />
	<acme:form-textbox code="employer.job.form.label.title" path="title" />
	<acme:form-moment code="employer.job.form.label.deadline" path="deadline" />
	<acme:form-money code="employer.job.form.label.salary" path="salary" />
	<acme:form-url code="employer.job.form.label.moreInfo" path="moreInfo" />
	<acme:form-textbox code="employer.job.form.label.finalMode" path="finalMode" />
	<acme:form-textbox code="employer.job.form.label.status" path="status" />
	<acme:form-textbox code="employer.job.form.label.active" path="active" />
	<acme:form-textarea code="employer.job.form.label.description" path="descriptor.description" />
	
	
	<button type="button" onclick="javascript: clearReturnUrl(); redirect('/employer/duty/list-mine?id=${descriptor.id}')"
            class="btn btn-default">
            <acme:message code="employer.job.form.button.duties"/>
    </button>
    
    <button type="button" onclick="javascript: clearReturnUrl(); redirect('/employer/application/list-mine?id=${application.id}')"
            class="btn btn-default">
            <acme:message code="employer.job.form.button.applications"/>
    </button>
    
	
	
	
	<acme:form-return code="employer.job.form.button.return" />
</acme:form>
