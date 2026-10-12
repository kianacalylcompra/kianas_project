class Validators {
  static String? name(String value) {
    final name = value.trim();

    if (name.isEmpty) return 'Full name is required.';
    if (name.length < 2) return 'Name must be at least 2 letters.';
    if (RegExp(r'[0-9]').hasMatch(name)) {
      return 'Name must not have numbers.';
    }
    if (!RegExp(r"^[A-Za-zÑñ .'-]+$").hasMatch(name)) {
      return 'Name must only have letters and spaces.';
    }
    return null;
  }

  static String? email(String value) {
    final email = value.trim();

    if (email.isEmpty) return 'Email is required.';
    if (email.contains(' ')) return 'Email must not have spaces.';
    if (RegExp(r'^[0-9]+$').hasMatch(email)) {
      return 'Email cannot be only numbers. Example: name@gmail.com';
    }
    if (!email.contains('@')) {
      return 'Email must have an @ sign. Example: name@gmail.com';
    }
    if ('@'.allMatches(email).length > 1) {
      return 'Email must have only one @ sign.';
    }

    final parts = email.split('@');
    final name = parts[0];
    final domain = parts[1];

    if (name.isEmpty) return 'Add your name before the @ sign.';
    if (domain.isEmpty) {
      return 'Add the domain after the @ sign, like gmail.com.';
    }
    if (!domain.contains('.')) {
      return 'Email domain needs a dot, like gmail.com.';
    }
    if (domain.startsWith('.') || domain.endsWith('.')) {
      return 'Email domain cannot start or end with a dot.';
    }
    if (email.contains('..')) return 'Email must not have two dots in a row.';

    final validEmail = RegExp(
      r'^[A-Za-z0-9._%+-]+@[A-Za-z0-9-]+(\.[A-Za-z0-9-]+)*\.[A-Za-z]{2,}$',
    );
    if (!validEmail.hasMatch(email)) {
      return 'Please enter a valid email. Example: name@gmail.com';
    }
    return null;
  }

  static String? password(String value) {
    if (value.isEmpty) return 'Password is required.';
    if (value.contains(' ')) return 'Password must not have spaces.';
    if (value.length < 8) return 'Password must be at least 8 characters.';
    if (!RegExp(r'[A-Za-z]').hasMatch(value)) {
      return 'Password must have at least one letter.';
    }
    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return 'Password must have at least one number.';
    }
    return null;
  }

  static String? confirmPassword(String password, String confirm) {
    if (confirm.isEmpty) return 'Please confirm your password.';
    if (password != confirm) return 'Passwords do not match.';
    return null;
  }
}
