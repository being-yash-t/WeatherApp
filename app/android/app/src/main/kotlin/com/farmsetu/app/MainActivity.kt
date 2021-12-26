package com.farmsetu.app

import androidx.core.view.WindowCompat.setDecorFitsSystemWindows
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    override fun onPostResume() {
        super.onPostResume()
        setDecorFitsSystemWindows(window, true)
        window.navigationBarColor = 0
        window.statusBarColor = 0
    }
}
