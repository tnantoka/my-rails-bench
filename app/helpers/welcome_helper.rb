module WelcomeHelper
  extend ERB::DefMethod
 
  def_erb_method 'render_link', Rails.root.join('app', 'views', 'welcome', '_link.html.erb').to_s

  def bench(num)
    tms = Benchmark.measure do
      num.times do
        yield
      end 
    end
    tms.total * 1000
  end
end
