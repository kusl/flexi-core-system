<%inherit file="/_sidebar.mako"/>
<%def name="title()">Appendicies</%def>
<%def name="body()">
<h1>${self.title()}</h1>
<%
    headings = [
        'character_creation',
        'melee_damage',
        'strength_tables',
        'stamina_tables',
        'reflex_tables',
        'constitution_tables',
        'comprehension_tables',
        'glossary'
    ]
    for heading in headings:
        self.include("core/rules/appendicies/_{0}.mako".format(heading))
%>
</%def>