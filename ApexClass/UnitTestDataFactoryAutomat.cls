/**
* @file {{ api_name }}.cls
* @author Arlanis/{{ creating_user }}
* @reviewedby Arlanis/xxx/yyyy-mm-dd
* @copyright Arlanis Reply AG
* @date {{ release_date }}
* @test ArlTCl{{ base_name }}.cls
* @subject Custom class {{ api_name }}
* @description TODO
* 
* Change History:
* |    Date          |    Company/Person        |    Description/Reason                             |    Requirement    |
* |------------------|--------------------------|---------------------------------------------------|-------------------|
* |    {{ release_date }}    |    Arlanis/{{ creating_user }}           |    initial release                                |                   |
**/


public class {{ api_name }} {
	
	
	public virtual class {{ base_name }}Wrapper {
        {% for field in fields %}
        // {{ field.name }} = ''; // label: {{field.label}}, type: {{field.type}} {% if field.type %}, referenceTo: {{field.referenceTo[0]}} {% endif %}
        {% endfor %}
	}

	{% for subclass in subclasses %}
	public virtual class {{ subclass.name }}{{ base_name }}Wrapper extends {{ base_name }}Wrapper {
	}
	{% endfor %}
	
	
}
