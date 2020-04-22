# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile
#埋点SDK
-keep class com.thinkive.analytics.TkStatisticAgent {
    public *;
}
-keep class com.tfzq.bdas.protobuf.** {
    *;
}

#okhttp
-dontwarn okhttp3.**
-dontwarn okio.**

# 设置所有 native 方法不被混淆
-keepclasseswithmembernames class * {
    native <methods>;
}


#protobuf
-keep class com.google.protobuf.** {*;}
#-keep class google.protobuf.** {*;}
-keep class bitfin.dreamserver.protobuf.** {*;}
-keep class com.tfzq.bdas.protobuf.** {*;}
-dontwarn com.googlecode.protobuf.format.SmileFormat
-dontwarn com.googlecode.protobuf.format.JavaPropsFormat$Tokenizer
-keep class org.**


-keepnames class * implements java.io.Serializable
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    !static !transient <fields>;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}
-dontwarn java.lang.invoke.**
-dontwarn sun.misc.**
-keep class sun.misc.** { *; }
