module Pages
  class MainActivity
    class << self
      include TokenAlert
      def click_on_token_button
        token_button.click
      end

      private

      def token_button
        id('token_button')
      end
    end
  end
end