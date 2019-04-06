<ul class="sidebar-menu" data-widget="tree">
	        <li class="header">MENU PRINCIPAL</li>
	        

	
		<#list nav_items as nav_item>
			<#assign nav_item_attr_has_popup = "" />
			<#assign nav_item_attr_selected = "" />
			<#assign nav_item_css_class = "" />
			<#if nav_item.hasChildren()>
				<#assign nav_item_css_class = "treeview menu-open" />
			</#if>
			<#if nav_item.isSelected()>
				<#assign nav_item_attr_has_popup = "aria-haspopup='true'" />
				<#assign nav_item_attr_selected = "aria-selected='true'" />
				<#assign nav_item_css_class = "active "+nav_item_css_class />
			</#if>
	        
			<li ${nav_item_attr_selected} class="${nav_item_css_class}" id="layout_${nav_item.getLayoutId()}" role="presentation">
				
				<a aria-labelledby="layout_${nav_item.getLayoutId()}" ${nav_item_attr_has_popup} href="${nav_item.getURL()}" ${nav_item.getTarget()} role="menuitem">
					<#if nav_item.getLayout().getExpandoBridge().getAttribute("icono")??>
						<#assign icono = nav_item.getLayout().getExpandoBridge().getAttribute("icono") >
						<i class="fa ${icono}"></i>
					</#if>
					<span>${nav_item.getName()}</span>
					<#if nav_item.hasChildren()>
						<span class="pull-right-container">
			              <i class="fa fa-angle-left pull-right"></i>
			            </span>
		            </#if>
				</a>

				<#if nav_item.hasChildren()>
					<ul class="treeview-menu" role="menu">
						<#list nav_item.getChildren() as nav_child>
				
							<#assign nav_child_attr_selected = "" />
							<#assign nav_child_css_class = "" />

							<#if nav_item.isSelected()>
								<#assign nav_child_attr_selected = "aria-selected='true'" />
								<#assign nav_child_css_class = "active" />
							</#if>

							<li ${nav_child_attr_selected} class="${nav_child_css_class}" id="layout_${nav_child.getLayoutId()}" role="presentation">
								<a aria-labelledby="layout_${nav_child.getLayoutId()}" href="${nav_child.getURL()}" ${nav_child.getTarget()} role="menuitem">
								
								<i class="fa fa-circle-o"></i>${nav_child.getName()}</a>
							</li>
						</#list>
					</ul>
				</#if>
			</li>
		</#list>
	
</ul>