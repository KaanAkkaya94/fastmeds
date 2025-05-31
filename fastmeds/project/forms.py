from flask_wtf import FlaskForm
from wtforms.fields import SubmitField, StringField, PasswordField, RadioField, DecimalField
from wtforms.validators import InputRequired, email, EqualTo
from wtforms.fields import SelectField  # Add this import


class NewCheckoutForm(FlaskForm):
    """Form for user checkout."""
    firstname = StringField("First name", validators = [InputRequired()])
    surname = StringField("Surname", validators = [InputRequired()])
    email = StringField("Email", validators = [InputRequired(), email()])
    phone = StringField("Phone number", validators = [InputRequired()])
    address = StringField("Address", validators = [InputRequired()])
    city = StringField("City", validators = [InputRequired()])
    postcode = StringField("Postcode", validators = [InputRequired()])
    state = SelectField(
        "State",
        choices=[
            ("QLD", "Queensland"),
            ("NSW", "New South Wales"),
            ("VIC", "Victoria"),
            ("TAS", "Tasmania"),
            ("SA", "South Australia"),
            ("WA", "Western Australia"),
            ("NT", "Northern Territory"),
            ("ACT", "Australian Capital Territory"),
        ],
        validators=[InputRequired()],
    )

    payment = SubmitField("Proceed to Checkout")


class LoginForm(FlaskForm):
    """Form for user login."""
    username = StringField("Username", validators = [InputRequired()])
    password = PasswordField("Password", validators = [InputRequired()])
    submit = SubmitField("Login")


# class RegisterForm(FlaskForm):
#     username = StringField('Username', validators=[InputRequired()])
#     password = PasswordField('Password', validators=[InputRequired()])
#     email = StringField('Email', validators=[email()])
#     firstname = StringField("First name", validators = [InputRequired()])
#     surname = StringField("Surname", validators = [InputRequired()])
#     phone = StringField("Phone number", validators = [InputRequired()])
#     submit = SubmitField('Register')

class RegisterForm(FlaskForm):
    """Form for user checkout."""
    username = StringField('Username', validators=[InputRequired()])
    password = PasswordField('Password', validators=[InputRequired()])
    # confirm_password = PasswordField(
    #     'Confirm Password',
    #     validators=[InputRequired(), EqualTo('password', message='Passwords must be the same')]
    # )
    email = StringField("Email", validators = [InputRequired(), email()])
    firstname = StringField("First name", validators = [InputRequired()])
    surname = StringField("Surname", validators = [InputRequired()])
    phone = StringField("Phone number", validators = [InputRequired()])
    address = StringField("Address", validators = [InputRequired()])
    city = StringField("City", validators = [InputRequired()])
    postcode = StringField("Postcode", validators = [InputRequired()])
    state = SelectField(
        "State",
        choices=[
            ("QLD", "Queensland"),
            ("NSW", "New South Wales"),
            ("VIC", "Victoria"),
            ("TAS", "Tasmania"),
            ("SA", "South Australia"),
            ("WA", "Western Australia"),
            ("NT", "Northern Territory"),
            ("ACT", "Australian Capital Territory"),
        ],
        validators=[InputRequired()],
    )
    submit = SubmitField('Register')


class orderCheckout(FlaskForm):
    """Form for user checkout."""
    paymentType = SelectField(
        "Select Payment Type",
        choices=[
            ("Debit/Credit"),
            ("Paypal"),
            ("Wise"),
            ("Bank Transfer")
           
        ],
        validators=[InputRequired()],
    )
    delivery = SelectField(
        "Delivery method",
        choices=[
            ("Normal Delivery"),
            ("Express Delivery"),
            ("Eco Friendly Delivery"),
            ("Store Pickup"),
        ],
        validators=[InputRequired()],
    )
    payment = SubmitField("Pay Now")

class AddCategoryForm(FlaskForm):
    """Form for adding a category."""
    category_name = StringField("Category Name", validators = [InputRequired()])
    category_submit = SubmitField("Add Category")

class AddProductForm(FlaskForm):
    """Form for adding a product."""
    product_category = RadioField("Category", choices = [], validators = [InputRequired()])
    product_name = StringField("Product Name", validators = [InputRequired()])
    product_description = StringField("Description", validators = [InputRequired()])
    product_price = DecimalField("Price", validators = [InputRequired()])
    product_submit = SubmitField("Add Product")
