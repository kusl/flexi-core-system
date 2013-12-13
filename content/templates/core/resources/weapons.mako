<%inherit file="/_sidebar.mako"/>

<%def name="body()">
	<div id="weapon_test" data-source="weapons" data-filter="class, type" class="data_target weapons"></div>
	
	<!--
		We have two types of data renderer
		1.) straighforward tables with filter selectors - tabs?
		2.) dom templates that are copyed and populated
		   data templates are normally used to populate
	-->
	
	<div class="data_template">
		<table>
		<tr id="weapon_template" data-template-name="weapon_row">
			<td data-field="name">1</td>
			<td data-field="penetration:base">2</td>
			<td data-field="penetration:ss">3</td>
			<td data-field="penetration:bf"></td>
			<td data-field="penetration:fa"></td>
			<td data-field="damage_ranking"></td>
			<td data-field="damage_type"></td>
			<td data-field="critital_rating"></td>
			<td data-field="range_effecivness:0"></td>
			<td data-field="range_effecivness:1"></td>
			<td data-field="range_effecivness:2"></td>
			<td data-field="range_effecivness:3"></td>
			<td data-field="range_effecivness:4"></td>
			<td data-field="radius"></td>
			<td data-field="size"></td>
			<td data-field="minimum_strength"></td>
			<td data-field="reload"></td>
			<td data-field="rate_of_fire"></td>
			<td data-field="cost"></td>
			<td data-field="legality"></td>
			<td data-field="avalability"></td>
		</tr>
		</table>
	</div>
	
	<script type="text/javascript">
		$(document).ready(function() {
			render_rows($("#weapon_test"), $("#weapon_template"));
		});
	</script>
	
</%def>
