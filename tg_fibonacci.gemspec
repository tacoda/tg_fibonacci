Gem::Specification.new do |s| 
    s.name         = "tg_fibonacci"
    s.version      = "1.0.4"
    s.author       = "Ian Johnson"
    s.email        = "tacoda@pm.me"
    s.summary      = "Generate the fibonacci sequence"
    s.homepage     = "https://github.com/tacoda/tg_fibonacci"
    s.licenses     = ['MIT']
    s.description  = File.read(File.join(File.dirname(__FILE__), 'README'))
    
    s.files         = Dir["{bin,lib,spec}/**/*"] + %w(LICENSE README README.md)
    s.test_files    = Dir["spec/**/*"]
    s.executables   = [ 'tg_fib' ]
    
    s.required_ruby_version = '>=1.9'
    s.add_development_dependency 'rspec'
  end