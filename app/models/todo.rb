class Todo < ApplicationRecord

    enum :status, [:CREATED, :IN_PROGRESS, :COMPLETE, :CANCELLED]
    enum :priority, [:LOW, :MEDIUM, :HIGH]
end
