<!-- IMPORT partials/breadcrumbs.tpl -->
<div widget-area="header"></div>
<div class="row">
<div class="category col-lg-12 col-sm-12" has-widget-class="category col-lg-9 col-sm-12" has-widget-target="sidebar">

	<!-- IMPORT partials/category/subcategory.tpl -->

	<!-- IF children.length --><hr class="hidden-xs"/><!-- ENDIF children.length -->

	<div class="clearfix btn-toolbar">
		<!-- IF privileges.topics:create -->
		<button component="category/post" id="new_topic" class="btn btn-primary">[[category:new_topic_button]]</button>
		<!-- ELSE -->
			<!-- IF !loggedIn -->
			<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
			<!-- ENDIF !loggedIn -->
		<!-- ENDIF privileges.topics:create -->

		<span class="pull-right" component="category/controls">
			<!-- IMPORT partials/category/watch.tpl -->
			<!-- IMPORT partials/category/sort.tpl -->
			<!-- IMPORT partials/category/tools.tpl -->
		</span>
	</div>

	<hr class="hidden-xs" />
	<br class="visible-xs" />
	<div class="category-bar"><p class="hidden-xs">{name}</p></div>

	<!-- IF !topics.length -->
	<div class="alert alert-warning" id="category-no-topics">
		[[category:no_topics]]
	</div>
	<!-- ENDIF !topics.length -->

	<!-- IMPORT partials/topics_list.tpl -->


	<!-- IF config.usePagination -->
	<!-- IMPORT partials/paginator.tpl -->
	<!-- ENDIF config.usePagination -->

</div>
<div widget-area="sidebar" class="col-lg-3 col-sm-12 hidden"></div>
</div>
 <div widget-area="footer"></div>
<!-- IMPORT partials/move_thread_modal.tpl -->

<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->
