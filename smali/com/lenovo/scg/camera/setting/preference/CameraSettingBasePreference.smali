.class public abstract Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;
.super Ljava/lang/Object;
.source "CameraSettingBasePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference$OnCameraPreferenceChangedListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;->mContext:Landroid/content/Context;

    .line 53
    sget-object v1, Lcom/lenovo/scg/R$styleable;->CameraSettingBasePreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;->mTitle:Ljava/lang/String;

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    return-void
.end method


# virtual methods
.method public getCameraGlobSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->get(Landroid/content/Context;)Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public abstract reloadValue()V
.end method
