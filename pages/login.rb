module Pages
  class Login
    class << self

      def login(email,password)
        type_email(email)
        type_password(password)
        click_on_login_button
      end

      def type_email(email)
        email_field.type(email)
      end

      def type_password(password)
        password_field.type(password)
      end

      def click_on_login_button
        login_button.click
      end

      private

      def email_field
        id("email")
      end

      def password_field
        id("password")
      end

      def login_button
        id("email_sign_in_button")
      end
    end
  end
end