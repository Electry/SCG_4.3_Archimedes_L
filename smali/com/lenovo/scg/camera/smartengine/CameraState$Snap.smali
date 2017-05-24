.class public Lcom/lenovo/scg/camera/smartengine/CameraState$Snap;
.super Ljava/lang/Object;
.source "CameraState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/smartengine/CameraState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Snap"
.end annotation


# static fields
.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SNAP_START:I = 0x1

.field public static final STATE_SNAP_STOP:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
