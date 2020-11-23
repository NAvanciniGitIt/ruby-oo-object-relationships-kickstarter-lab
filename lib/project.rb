class Project

    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backers = ProjectBacker.all.select do |backed| 
          backed.project == self
        end
        project_backers.map do |backed|
          backed.backer
        end
      end

end