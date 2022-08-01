require_relative 'app'

def main 
    app=App.new
    exit=0
    while(exit==0)
        app.main_menu
        command=gets.chomp.to_i
        if(command==10)
            exit=1
        else 
            app.cases(command)
        end
    end
end

main