.class public Lcom/lenovo/scg/camera/smartengine/CameraState$Focus;
.super Ljava/lang/Object;
.source "CameraState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/smartengine/CameraState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Focus"
.end annotation


# static fields
.field public static final STATE_CONTINOUS_FOCUSING:I = 0x5

.field public static final STATE_CONTINOUS_FOCUSING_SNAP_ON_FINISH:I = 0x6

.field public static final STATE_FAIL:I = 0x4

.field public static final STATE_FOCUSING:I = 0x1

.field public static final STATE_FOCUSING_SNAP_ON_FINISH:I = 0x2

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SUCCESS:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
