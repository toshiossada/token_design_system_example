plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.tokens_playground"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.tokens_playground"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }

    buildFeatures {
        buildConfig = true // necessário para usar buildConfigField nos flavors
    }

    flavorDimensions += "flavor" // Define o grupo de sabores (flavors) chamado "flavor"

        productFlavors {
        create("app1") { 
            dimension = "flavor" // Associa à dimensão "flavor"
            applicationIdSuffix = ".app1" // Sufixo no ID do app
            versionNameSuffix = "-app1" // Sufixo na versão do app
            resValue("string", "app_name", "App Abacaxi") // Define nome do app para esse flavor
            manifestPlaceholders["flavorName"] = "app1" // Placeholder para usar no AndroidManifest.xml
            buildConfigField("String", "FLAVOR_NAME", "\"app1\"") // Campo de build acessível via código
        }
        create("app2") {
            dimension = "flavor"
            applicationIdSuffix = ".app2"
            versionNameSuffix = "-app2"
            resValue("string", "app_name", "App app2")
            manifestPlaceholders["flavorName"] = "app2"
            buildConfigField("String", "FLAVOR_NAME", "\"app2\"")
        }
        create("app3") {
            dimension = "flavor"
            applicationIdSuffix = ".app3"
            versionNameSuffix = "-app3"
            resValue("string", "app_name", "App app3")
            manifestPlaceholders["flavorName"] = "app3"
            buildConfigField("String", "FLAVOR_NAME", "\"app3\"")
        }
    }
}

flutter {
    source = "../.."
}