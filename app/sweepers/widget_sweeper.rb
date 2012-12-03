class WidgetSweeper < ActionController::Caching::Sweeper
  observe Widget

  def after_create(foo)
    expire_swept_caches_for(:all_widgets)
  end

  def after_update(widget)
    expire_swept_caches_for(widget)
    expire_swept_caches_for(:all_widgets)
  end

  def after_destroy(widget)
    expire_swept_caches_for(widget)
    expire_swept_caches_for(:all_widgets)
  end
end
