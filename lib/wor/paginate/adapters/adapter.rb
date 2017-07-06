module Wor
  module Paginate
    module Adapters
      class Adapter
        attr_reader :page

        def initialize(content, page, limit)
          @content = content
          @page = page
          @limit = limit
        end

        def adapt?
          required_methods.all? { |method| @content.respond_to? method }
        end

        [:required_methods, :paginated_content, :count, :total_count, :next_page].each do |method|
          define_method(method) { raise NotImplementedError }
        end

        delegate :total_pages, to: :paginated_content

        def next_page
          return nil if page >= total_pages
          page + 1
        end
      end
    end
  end
end
