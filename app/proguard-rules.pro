# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/mahdi/android-sdk-macosx/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

#
# Butterknife rules
#
-dontwarn butterknife.internal.**
-keep class **$$ViewInjector { *; }
-keepnames class * { @butterknife.InjectView *;}

#
# EventBus rules
#
-keepclassmembers class ** {
    public void onEvent*(**);
}

#
# Remove debug, verbose and info logs (from both Android and Timber)
#
-assumenosideeffects class android.util.Log {
    public static *** i(...);
    public static *** d(...);
    public static *** v(...);
}

-assumenosideeffects class timber.log.Timber* {
    public static *** i(...);
    public static *** d(...);
    public static *** v(...);
}