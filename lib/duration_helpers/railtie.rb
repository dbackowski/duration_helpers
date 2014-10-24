class Railtie < Rails::Railtie
  initializer 'duration_helpers.view_helpers' do
    ActionView::Base.send :include, DurationHelpers
  end
end