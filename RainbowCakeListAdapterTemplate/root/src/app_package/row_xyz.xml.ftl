<?xml version="1.0" encoding="utf-8"?>
<#if useAndroidX == true>
<androidx.constraintlayout.widget.ConstraintLayout xmlns:android="http://schemas.android.com/apk/res/android"
<#else>
<android.support.constraint.ConstraintLayout xmlns:android="http://schemas.android.com/apk/res/android"
</#if>
     xmlns:app="http://schemas.android.com/apk/res-auto"
     android:layout_width="match_parent"
     android:layout_height="wrap_content">

    <TextView
        android:layout_width="0dp"
        android:layout_height="wrap_content"
        app:layout_constraintBottom_toBottomOf="parent"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

<#if useAndroidX == true>
</androidx.constraintlayout.widget.ConstraintLayout>
<#else>
</android.support.constraint.ConstraintLayout>
</#if>
