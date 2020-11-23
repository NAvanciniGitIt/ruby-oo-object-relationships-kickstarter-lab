class Backer

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backers = ProjectBacker.all.select do |backed|
          backed.backer == self
        end
        project_backers.map do |backed|
          backed.project
        end
      end
end