{"id":"5f3fd8fc-fb83-4623-8694-ccf5bc8293a3","name":"CustomerService-taskform.frm","model":{"taskName":"CustomerService","processId":"lab01-hello-jbpm.IssuesProcess","properties":[{"name":"in_issue","typeInfo":{"type":"OBJECT","className":"com.myspace.lab01_hello_jbpm.Issue","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":true}]}},{"name":"out_issue","typeInfo":{"type":"OBJECT","className":"com.myspace.lab01_hello_jbpm.Issue","multiple":false},"metaData":{"entries":[]}}],"formModelType":"org.kie.workbench.common.forms.jbpm.model.authoring.task.TaskFormModel"},"fields":[{"nestedForm":"cefc418e-3454-4122-9299-721c96320a51","container":"FIELD_SET","id":"field_535315239258385E11","name":"in_issue","label":"Reported Issue","required":false,"readOnly":true,"validateOnChange":true,"helpMessage":"","binding":"in_issue","standaloneClassName":"com.myspace.lab01_hello_jbpm.Issue","code":"SubForm","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.relations.subForm.definition.SubFormFieldDefinition"},{"placeHolder":"TextArea","rows":4,"id":"field_9305","name":"out_issue.solution","label":"TextArea","required":true,"readOnly":false,"validateOnChange":true,"helpMessage":"Input the answer to the customer need","binding":"out_issue.solution","standaloneClassName":"java.lang.String","code":"TextArea","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textArea.definition.TextAreaFieldDefinition"}],"layoutTemplate":{"version":2,"style":"FLUID","layoutProperties":{},"rows":[{"height":"12","properties":{},"layoutColumns":[{"span":"12","height":"12","properties":{},"rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_535315239258385E11","form_id":"5f3fd8fc-fb83-4623-8694-ccf5bc8293a3"}}]}]},{"height":"12","properties":{},"layoutColumns":[{"span":"12","height":"12","properties":{},"rows":[{"height":"12","properties":{},"layoutColumns":[{"span":"12","height":"6","properties":{},"rows":[],"layoutComponents":[{"dragTypeName":"org.uberfire.ext.plugin.client.perspective.editor.layout.editor.HTMLLayoutDragComponent","properties":{"HTML_CODE":"\u003ch3\u003eAnswer\u0026nbsp;to Customer:\u003c/h3\u003e"}}]},{"span":"12","height":"6","properties":{},"rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_9305","form_id":"5f3fd8fc-fb83-4623-8694-ccf5bc8293a3"}}]}]}],"layoutComponents":[]}]}]}}