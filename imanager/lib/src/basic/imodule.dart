part of imanager;

sealed class IModule implements EventCallback, IModuleInterface {

  IModule({required Object token}) : _instanceToken = token;

  final Object? _instanceToken;

  /// Ensures that the instance was constructed with a non-`const` token
  /// that matches the provided token and throws [AssertionError] if not.
  ///
  /// This is used to ensure that implementers are using `extends` rather than
  /// `implements`.
  ///
  /// Subclasses of [MockPlatformInterfaceMixin] are assumed to be valid in debug
  /// builds.
  ///
  /// This is implemented as a static method so that it cannot be overridden
  /// with `noSuchMethod`.
  static void verify(IModule instance, Object token) {
    _verify(instance, token, preventConstObject: true);
  }

  static void _verify(
    IModule instance,
    Object token, {
    required bool preventConstObject,
  }) {
    if (preventConstObject &&
        identical(instance._instanceToken, const Object())) {
      throw AssertionError('`const Object()` cannot be used as the token.');
    }
    if (!identical(token, instance._instanceToken)) {
      throw AssertionError(
          'Platform interfaces must not be implemented with `implements`');
    }
  }

  @override
  // TODO: implement hashCode
  int get hashCode => Object.hash(getPackageName(), getModuleName());

  @override
  bool operator ==(Object other) {
    if (other is IModule) {
      return other.hashCode == hashCode;
    }
    return false;
  }
}