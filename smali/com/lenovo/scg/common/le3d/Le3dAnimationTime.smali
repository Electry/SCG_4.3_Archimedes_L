.class public Lcom/lenovo/scg/common/le3d/Le3dAnimationTime;
.super Ljava/lang/Object;
.source "Le3dAnimationTime.java"


# static fields
.field private static volatile sTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()J
    .locals 2

    .prologue
    .line 16
    sget-wide v0, Lcom/lenovo/scg/common/le3d/Le3dAnimationTime;->sTime:J

    return-wide v0
.end method

.method public static startTime()J
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/scg/common/le3d/Le3dAnimationTime;->sTime:J

    .line 21
    sget-wide v0, Lcom/lenovo/scg/common/le3d/Le3dAnimationTime;->sTime:J

    return-wide v0
.end method

.method public static update()V
    .locals 2

    .prologue
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/scg/common/le3d/Le3dAnimationTime;->sTime:J

    .line 12
    return-void
.end method
