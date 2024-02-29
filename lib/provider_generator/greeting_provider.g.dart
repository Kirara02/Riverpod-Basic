// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'greeting_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$greetingGenHash() => r'98de039791b218f870d46372891570599f3d0cd8';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [greetingGen].
@ProviderFor(greetingGen)
const greetingGenProvider = GreetingGenFamily();

/// See also [greetingGen].
class GreetingGenFamily extends Family<AsyncValue<String>> {
  /// See also [greetingGen].
  const GreetingGenFamily();

  /// See also [greetingGen].
  GreetingGenProvider call({
    required String nama,
  }) {
    return GreetingGenProvider(
      nama: nama,
    );
  }

  @override
  GreetingGenProvider getProviderOverride(
    covariant GreetingGenProvider provider,
  ) {
    return call(
      nama: provider.nama,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'greetingGenProvider';
}

/// See also [greetingGen].
class GreetingGenProvider extends AutoDisposeFutureProvider<String> {
  /// See also [greetingGen].
  GreetingGenProvider({
    required String nama,
  }) : this._internal(
          (ref) => greetingGen(
            ref as GreetingGenRef,
            nama: nama,
          ),
          from: greetingGenProvider,
          name: r'greetingGenProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$greetingGenHash,
          dependencies: GreetingGenFamily._dependencies,
          allTransitiveDependencies:
              GreetingGenFamily._allTransitiveDependencies,
          nama: nama,
        );

  GreetingGenProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.nama,
  }) : super.internal();

  final String nama;

  @override
  Override overrideWith(
    FutureOr<String> Function(GreetingGenRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GreetingGenProvider._internal(
        (ref) => create(ref as GreetingGenRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        nama: nama,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _GreetingGenProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GreetingGenProvider && other.nama == nama;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, nama.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GreetingGenRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `nama` of this provider.
  String get nama;
}

class _GreetingGenProviderElement
    extends AutoDisposeFutureProviderElement<String> with GreetingGenRef {
  _GreetingGenProviderElement(super.provider);

  @override
  String get nama => (origin as GreetingGenProvider).nama;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
