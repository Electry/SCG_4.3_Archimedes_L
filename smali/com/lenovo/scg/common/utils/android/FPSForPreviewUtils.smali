.class public Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils;
.super Ljava/lang/Object;
.source "FPSForPreviewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils$OnPreviewFPSChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FPSForPreviewUtils"

.field private static mPreviewFPS:I

.field private static mPreviewFPSChangedListener:Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils$OnPreviewFPSChangedListener;

.field private static mPreviewFpsStart:J

.field private static mPreviewFrames:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils;->mPreviewFpsStart:J

    .line 21
    sput v2, Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils;->mPreviewFrames:I

    .line 23
    sput v2, Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils;->mPreviewFPS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getPreviewFPS()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils;->mPreviewFPS:I

    return v0
.end method

.method public static onPreviewFPSChanged()V
    .locals 6

    .prologue
    .line 43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 45
    .local v0, "end":J
    sget v2, Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils;->mPreviewFrames:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils;->mPreviewFrames:I

    .line 47
    sget-wide v2, Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils;->mPreviewFpsStart:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 49
    sget v2, Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils;->mPreviewFrames:I

    sput v2, Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils;->mPreviewFPS:I

    .line 51
    const/4 v2, 0x0

    sput v2, Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils;->mPreviewFrames:I

    .line 52
    sput-wide v0, Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils;->mPreviewFpsStart:J

    .line 54
    sget-object v2, Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils;->mPreviewFPSChangedListener:Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils$OnPreviewFPSChangedListener;

    if-eqz v2, :cond_0

    .line 55
    sget-object v2, Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils;->mPreviewFPSChangedListener:Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils$OnPreviewFPSChangedListener;

    sget v3, Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils;->mPreviewFPS:I

    invoke-interface {v2, v3}, Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils$OnPreviewFPSChangedListener;->onPreviewFPSChanged(I)V

    .line 58
    :cond_0
    return-void
.end method

.method public static onPreviewFPSChangedPause()V
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils;->mPreviewFPSChangedListener:Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils$OnPreviewFPSChangedListener;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils;->mPreviewFPSChangedListener:Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils$OnPreviewFPSChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils$OnPreviewFPSChangedListener;->onPreviewFPSChanged(I)V

    .line 65
    :cond_0
    return-void
.end method

.method public static setOnPreviewFPSChangedListener(Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils$OnPreviewFPSChangedListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils$OnPreviewFPSChangedListener;

    .prologue
    .line 31
    sput-object p0, Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils;->mPreviewFPSChangedListener:Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils$OnPreviewFPSChangedListener;

    .line 32
    return-void
.end method
