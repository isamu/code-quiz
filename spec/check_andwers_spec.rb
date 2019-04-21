require_relative '../lib/index'
Dir.glob(__dir__ + '/../works/*/*/answer.rb').each {|f|
  require_relative(f)
}

Works.all_models.each do |work_class|
  work_class
  work_instance = work_class.new
  
  describe work_class.quiz_name do  
    if work_instance.respond_to?(:test)
      context 'run test' do
        work_class.answers.each do |ans|
          it ans[:message] do
            expect(work_instance.test(*ans[:test_args])).to eq (ans[:answar])
          end
        end
      end
    else
      context 'no implement method' do
        it 'is not implemented' do
        end
      end
    end
    
  end
end


      
