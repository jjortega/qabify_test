module Pages
  class MainActivity
    module TokenAlert
      def token
        token_view.text
      end

      private

      def token_view
        id('message')
      end
    end
  end
end