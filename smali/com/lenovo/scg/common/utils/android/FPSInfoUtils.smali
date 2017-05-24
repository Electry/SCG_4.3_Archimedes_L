.class public Lcom/lenovo/scg/common/utils/android/FPSInfoUtils;
.super Ljava/lang/Object;
.source "FPSInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/utils/android/FPSInfoUtils$OnFPSChangedListener;
    }
.end annotation


# static fields
.field public static mChangedListener:Lcom/lenovo/scg/common/utils/android/FPSInfoUtils$OnFPSChangedListener;

.field public static mFPS:I

.field public static mFpsStart:J

.field public static mFrames:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lenovo/scg/common/utils/android/FPSInfoUtils;->mFpsStart:J

    .line 29
    sput v2, Lcom/lenovo/scg/common/utils/android/FPSInfoUtils;->mFrames:I

    .line 31
    sput v2, Lcom/lenovo/scg/common/utils/android/FPSInfoUtils;->mFPS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getFPS()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/lenovo/scg/common/utils/android/FPSInfoUtils;->mFPS:I

    return v0
.end method

.method public static onFPSChanged()V
    .locals 6

    .prologue
    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 43
    .local v0, "end":J
    sget v2, Lcom/lenovo/scg/common/utils/android/FPSInfoUtils;->mFrames:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/lenovo/scg/common/utils/android/FPSInfoUtils;->mFrames:I

    .line 44
    sget-wide v2, Lcom/lenovo/scg/common/utils/android/FPSInfoUtils;->mFpsStart:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 45
    sget-object v2, Lcom/lenovo/scg/common/utils/android/FPSInfoUtils;->mChangedListener:Lcom/lenovo/scg/common/utils/android/FPSInfoUtils$OnFPSChangedListener;

    if-eqz v2, :cond_0

    .line 46
    sget v2, Lcom/lenovo/scg/common/utils/android/FPSInfoUtils;->mFrames:I

    sput v2, Lcom/lenovo/scg/common/utils/android/FPSInfoUtils;->mFPS:I

    .line 47
    sget-object v2, Lcom/lenovo/scg/common/utils/android/FPSInfoUtils;->mChangedListener:Lcom/lenovo/scg/common/utils/android/FPSInfoUtils$OnFPSChangedListener;

    sget v3, Lcom/lenovo/scg/common/utils/android/FPSInfoUtils;->mFPS:I

    invoke-interface {v2, v3}, Lcom/lenovo/scg/common/utils/android/FPSInfoUtils$OnFPSChangedListener;->onFPSChanged(I)V

    .line 49
    const/4 v2, 0x0

    sput v2, Lcom/lenovo/scg/common/utils/android/FPSInfoUtils;->mFrames:I

    .line 50
    sput-wide v0, Lcom/lenovo/scg/common/utils/android/FPSInfoUtils;->mFpsStart:J

    .line 53
    :cond_0
    return-void
.end method

.method public static onPause()V
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lcom/lenovo/scg/common/utils/android/FPSInfoUtils;->mChangedListener:Lcom/lenovo/scg/common/utils/android/FPSInfoUtils$OnFPSChangedListener;

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/lenovo/scg/common/utils/android/FPSInfoUtils;->mChangedListener:Lcom/lenovo/scg/common/utils/android/FPSInfoUtils$OnFPSChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/common/utils/android/FPSInfoUtils$OnFPSChangedListener;->onFPSChanged(I)V

    .line 66
    :cond_0
    return-void
.end method

.method public static setOnFPSChangedListener(Lcom/lenovo/scg/common/utils/android/FPSInfoUtils$OnFPSChangedListener;)V
    .locals 0
    .param p0, "mChangedListener"    # Lcom/lenovo/scg/common/utils/android/FPSInfoUtils$OnFPSChangedListener;

    .prologue
    .line 24
    sput-object p0, Lcom/lenovo/scg/common/utils/android/FPSInfoUtils;->mChangedListener:Lcom/lenovo/scg/common/utils/android/FPSInfoUtils$OnFPSChangedListener;

    .line 25
    return-void
.end method
