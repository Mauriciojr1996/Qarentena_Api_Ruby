class UserPut
    attr_accessor :id, :title, :dueDate, :completed

    def user_put
        {

        ID: @id,
        Title: @title,
        DueDate: @dueDate,
        Completed: @completed
        
        }
    end  
end