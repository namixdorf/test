ActionView::Helpers::FormHelper.send(:include, TwitterBootstrap::FormHelper)
ActionView::Base.send(:include, TwitterBootstrap::FormHelper)
ActionView::Helpers::FormBuilder.send(:include, TwitterBootstrap::FormBuilder)