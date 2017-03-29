class TodoList

    def initialize(arr)
        @arr = arr
    end

    def get_items
        @arr
    end

    def get_item(index)
        @arr[index]
    end

    def add_item(item)
        @arr.push(item)
    end

    def delete_item(item)
        @arr.delete(item)
    end

end
