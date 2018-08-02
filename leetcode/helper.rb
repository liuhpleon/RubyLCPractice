module Helper
  module LinkedListHelper
    class ListNode
      attr_accessor :val, :next
      def initialize(val)
        @val = val
        @next = nil
      end
    end

    def list_to_array(l)
      arr = []
      while l != nil
        arr << l.val
        l = l.next
      end
      arr
    end

    def init_list_by_array(arr)
      head = ListNode.new(arr[0])
      p = head
      (1...arr.length).each do |index|
        p.next = ListNode.new(arr[index])
        p = p.next
      end
      head
    end

  end
end