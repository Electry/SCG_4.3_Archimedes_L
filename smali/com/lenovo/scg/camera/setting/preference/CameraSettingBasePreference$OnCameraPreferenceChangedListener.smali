.class public interface abstract Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference$OnCameraPreferenceChangedListener;
.super Ljava/lang/Object;
.source "CameraSettingBasePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCameraPreferenceChangedListener"
.end annotation


# virtual methods
.method public abstract onCameraSharedPreferenceChanged()V
.end method

.method public abstract onCameraSwitchButtonClicked(I)V
.end method

.method public abstract onOverriddenPreferencesClicked()V
.end method

.method public abstract onRestCameraPreferenceClicked()V
.end method
