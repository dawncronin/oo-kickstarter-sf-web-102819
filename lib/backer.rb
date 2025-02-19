class Backer
    attr_reader :backed_projects, :name
    def initialize (name)
        @name = name
        @backed_projects = []
    end

    def back_project (new_project)
        if !self.backed_projects.include?(new_project)
        @backed_projects << new_project
        end
        if !new_project.backers.include?(self) 
        new_project.add_backer(self)
        end
    end

end